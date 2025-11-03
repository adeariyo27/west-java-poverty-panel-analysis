library(tidyverse)
library(readxl)
setwd("D:/Magister/Kuliah/Pemrograman Statistika/Project Akhir/data/raw/")

input_filename_excel <- "TPT_raw.xlsx" # Ganti dengan nama file Excel Anda
output_filename <- "TPT_Jabar_2017-2024.csv"

df <- read_excel(input_filename_excel, sheet = "data") 

tpt_panel_formatted <- df %>%
  filter(Tahun >= 2017 & Tahun <= 2024) %>%
  mutate(
    Wilayah_formatted = str_to_title(UnitAnalisis),
    Wilayah_formatted = str_replace(Wilayah_formatted, "^Kabupaten ", "")
  ) %>%
  select(
    Wilayah = Wilayah_formatted,
    Tahun,
    TPT
  ) %>%
  arrange(Wilayah, Tahun)

write_csv(tpt_panel_formatted, output_filename)

print(paste("Data TPT bersih telah disimpan di:", output_filename))
print(head(tpt_panel)) # Tampilkan 6 baris pertama

#--------------------------------------------------------

data_jabar <- read.csv2("Data Gabungan.csv")
data_jabar <- data_jabar %>%
  arrange(Wilayah, desc(Tahun)) %>% 
  filter(Tahun >= 2021)

glimpse(data_jabar)
view(data_jabar)

output_filename2 <- ("Data Panel Jabar 2021-2024.csv")
write_csv(data_jabar, output_filename2)


#----------------------------------------------------------

df <- read_csv("Data Panel Jabar 2021-2024.csv")
view(df)
df_new <- df[ , -4]
view(df_new)
output_filename2 <- ("Data Panel PPM Jabar 2021-2024.csv")
write_csv(df_new, output_filename2)
