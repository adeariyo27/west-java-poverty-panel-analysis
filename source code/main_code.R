# -------------------------------------------------------------------
# BAGIAN 0: PERSIAPAN (SETUP)
# -------------------------------------------------------------------
library(tidyverse)    
library(plm)          
library(psych)        
library(lmtest)      
library(car)          
library(RColorBrewer) 
library(sandwich)
library(ggcorrplot)
library(ggplot2)

setwd("D:/Magister/Kuliah/Pemrograman Statistika/Project Akhir/data/clean/")
options(scipen = 999)

df <- read_csv("Data Panel PPM Jabar 2021-2024.csv")
glimpse(df)
head(df)
tail(df)
view(df)


# -------------------------------------------------------------------
# BAGIAN 1: ANALISIS DATA EKSPLORATIF (EDA)
# -------------------------------------------------------------------

# Statistik Deskriptif Keseluruhan
vars_numerik <- df %>% dplyr::select(PPM, TPT, RLS)
print(psych::describe(vars_numerik), digits = 2)

# Visualisasi Distribusi Variabel
data_long <- vars_numerik %>%
  pivot_longer(cols = everything(), names_to = "Variabel", values_to = "Nilai")

plot_distribusi <- ggplot(data_long, aes(x = Nilai, fill = Variabel)) +
  geom_density(alpha = 0.7) +
  geom_histogram(aes(y = ..density..), alpha = 0.2, bins = 15) +
  facet_wrap(~ Variabel, scales = "free") +
  theme_minimal() +
  labs(
    title = "Distribusi Variabel Dependen dan Independen",
    subtitle = "Histogram dan Plot Densitas (2021-2024)",
    x = "Nilai",
    y = "Densitas"
  ) +
  theme(legend.position = "none")

print(plot_distribusi)

# 2.1 Heatmap Matriks Korelasi
vars_for_cor <- df %>% 
  dplyr::select(PPM, TPT, RLS)
cor_matrix <- cor(vars_for_cor, use = "complete.obs")
print("Matriks Korelasi:")
print(round(cor_matrix, 2))

plot_heatmap <- ggcorrplot(
  cor_matrix,
  hc.order = TRUE,
  type = "lower",
  lab = TRUE,
  title = "Heatmap Korelasi Y = Persentase Penduduk Miskin"
) +
  theme(
    axis.text.x = element_text(angle = 0, hjust = 0.5, vjust = 0.5)
  )

print(plot_heatmap)

# 2.2.1 Spaghetti Plot (Tren Waktu 'Within-Group')
plot_spaghetti <- ggplot(df, aes(x = Tahun, y = PPM, group = Wilayah, color = Wilayah)) +
  geom_line(linewidth = 0.8, alpha = 0.7) +
  geom_point(size = 1.5) +
  theme_minimal() +
  labs(
    title = "Spaghetti Plot: Tren PPM per Wilayah (2021-2024)",
    subtitle = "Setiap garis mewakili satu wilayah",
    x = "Tahun",
    y = "Persentase Penduduk Miskin (%)"
  ) +
  theme(legend.position = "none") + # Terlalu banyak legenda (27)
  scale_x_continuous(breaks = seq(2021, 2024, by = 1))

print(plot_spaghetti)

# 2.2.2 Boxplot (Variasi Antar Wilayah 'Between-Group')
plot_box_wilayah <- ggplot(df, aes(x = reorder(Wilayah, PPM, FUN = median), y = PPM, fill = Wilayah)) +
  geom_boxplot() +
  theme_minimal() +
  labs(
    title = "Distribusi PPM per Wilayah (2021-2024)",
    subtitle = "Diurutkan berdasarkan Median PPM",
    x = "Wilayah", 
    y = "Persentase Penduduk Miskin (%)" 
  ) +
  theme(
    legend.position = "none"
  ) +
 coord_flip() 

print(plot_box_wilayah)


# -------------------------------------------------------------------
# BAGIAN 2: ESTIMASI TIGA MODEL PANEL UTAMA
# -------------------------------------------------------------------

# 2.1 Model Common Effect (Pooled OLS)
common <- plm(PPM ~ TPT + RLS, 
              data = df, 
              index = c("Wilayah", "Tahun"), 
              model = "pooling")

# 2.2 Model Fixed Effect (FEM)
fixed <- plm(PPM ~ TPT + RLS, 
             data = df, 
             index = c("Wilayah", "Tahun"), 
             model = "within")

# 2.3 Model Random Effect (REM)
random <- plm(PPM ~ TPT + RLS, 
              data = df, 
              index = c("Wilayah", "Tahun"), 
              model = "random")


summary(common)
summary(fixed)
summary(random)


# -------------------------------------------------------------------
# BAGIAN 3: PEMILIHAN MODEL (UJI SPESIFIKASI)
# -------------------------------------------------------------------

# 3.1 Uji Chow (Fixed vs Common)
print("--- Uji Chow (Fixed vs Common) ---")
print(pFtest(fixed, common))

# 3.2 Uji Lagrange Multipliers
print("--- Uji Chow (Random vs Common) ---")
random <- plm(PPM~TPT+RLS,data=df,index=c("Wilayah","Tahun"),model="random")
plmtest(random,effect="individual",type="bp")

# 3.3 Uji Hausman (Fixed vs Random)
print("--- Uji Hausman (Fixed vs Random) ---")
print(phtest(fixed, random))


# -------------------------------------------------------------------
# BAGIAN 4: UJI ASUMSI KLASIK (DIAGNOSTIK MODEL 'Random')
# -------------------------------------------------------------------

# 4.1 Cek Multikolinearitas (VIF)
pooled_lm <- lm(PPM ~ TPT + RLS, data = df)
vif_results <- car::vif(pooled_lm)
print("--- Uji Multikolinearitas (VIF) ---")
print(vif_results)

# 4.2 Uji Normalitas Residual
print("--- Uji Normalitas (Shapiro-Wilk) ---")
print(shapiro.test(residuals(random)))

# 4.3 Uji Homoskedastisitas (Breusch-Pagan)
print("--- Uji Heteroskedastisitas (Breusch-Pagan) ---")
print(lmtest::bptest(random))

# 4.4 Uji Autokorelasi (Breusch-Godfrey/Wooldridge)
print("--- Uji Autokorelasi (Durbin-Watson) ---")
print(pdwtest(random))

# 4.5 Uji Cross-sectional Dependence
print("--- Uji Cross-sectional Dependence (Pesaran CD) ---")
print(pcdtest(fixed, test = "cd"))


# -------------------------------------------------------------------
# BAGIAN 5: VISUALISASI Z-SCORE 
# -------------------------------------------------------------------

vars_to_plot <- c("PPM", "TPT", "RLS")

data_avg_trend <- df %>%
  # Hitung rata-rata nasional per tahun
  group_by(Tahun) %>%
  summarise(across(all_of(vars_to_plot), ~ mean(.x, na.rm = TRUE))) %>%
  ungroup() %>%
  # Normalisasi Z-Score
  mutate(across(all_of(vars_to_plot), ~ as.numeric(scale(.x)))) %>%
  # Ubah format dari 'wide' ke 'long' agar mudah di-plot
  pivot_longer(
    cols = all_of(vars_to_plot),
    names_to = "Variabel",
    values_to = "Z_Score"
  )

plot_tren <- ggplot(data_avg_trend, aes(x = Tahun, y = Z_Score, color = Variabel, group = Variabel)) +
  geom_line(linewidth = 1.2) +
  geom_point(size = 2) +
  labs(
    title = "Tren Rata-Rata Jawa-Barat (Ternormalisasi)",
    subtitle = "Variabel TPT & RLS vs Persentase Penduduk Miskin (2021-2024)",
    x = "Tahun",
    y = "Z-Score (Standar Deviasi dari Rata-rata)"
  ) +
  theme_minimal() +
  theme(legend.position = "bottom")


print(plot_tren + 
        scale_x_continuous(breaks = seq(2021, 2024, by = 1)))


# -------------------------------------------------------------------
# BAGIAN 6: INTERPRETASI MODEL
# -------------------------------------------------------------------
robust_summary <- coeftest(random, vcov = vcovSCC(random, type = "HC0", maxlag = 2))
print(robust_summary)
# Interpretasi Koefisien
cat("\n--- Interpretasi Koefisien Model Random Effect dengan Standard Error Robust ---\n")
cat(sprintf("1. Koefisien TPT: %.4f\n", robust_summary["TPT", "Estimate"]))
cat("   Artinya: Setiap kenaikan 1 persen poin tingkat pengangguran (TPT) di Jawa-Barat dikaitkan dengan\n")
cat("   peningkatan sebesar ", sprintf("%.4f", robust_summary["TPT", "Estimate"]), " persen poin pada persentase penduduk miskin (PPM),\n")
cat("   dengan asumsi variabel lain tetap konstan.\n\n")
cat(sprintf("2. Koefisien RLS: %.4f\n", robust_summary["RLS", "Estimate"]))
cat("   Artinya: Setiap kenaikan 1 persen poin rasio lama sekolah (RLS) di Jawa-Barat dikaitkan dengan\n")
cat("   penurunan sebesar ", sprintf("%.4f", robust_summary["RLS", "Estimate"]), " persen poin pada persentase penduduk miskin (PPM),\n")
cat("   dengan asumsi variabel lain tetap konstan.\n")
# -------------------------------------------------------------------

