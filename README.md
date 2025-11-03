![](assets/images/banner.png)


### 📘 **Pendahuluan**

---

Proyek ini bertujuan untuk menganalisis pengaruh empat komponen Indeks Pembangunan Manusia (IPM) terhadap laju pertumbuhan ekonomi di tingkat provinsi di Indonesia. Analisis ini menggunakan data series waktu dari tahun 2019 hingga 2024.

### 📖 **Latar Belakang**

---

Jawa Barat menghadirkan suatu anomali. sebagai lumbung industri dan populasi terbesar, **kemiskinan** tetap menjadi **masalah kronis**. Kebijakan publik secara tradisional berfokus pada dua pilar untuk mengatasinya, yaitu menurunkan **Tingkat Pengangguran Terbuka (TPT)** dan **meningkatkan Rata-rata Lama Sekolah (RLS)**. Namun, efektivitas kedua pilar ini dipertanyakan. Fokus pada TPT berisiko mengabaikan fenomena pekerja miskin yang **memiliki pekerjaan** namun **upahnya tidak mencukupi**, sementara fokus pada RLS dihadapkan pada realitas ketidakcocokan struktural di mana **lulusan terdidik tidak selalu terserap oleh pasar kerja yang ada**.

Proyek ini tidak bertujuan untuk membuktikan ulang teori, melainkan untuk menguji efektivitas kuantitatif dari kedua pilar kebijakan tersebut. Dengan menggunakan data panel 2021-2024 dari 27 kabupaten/kota di Jawa Barat, penelitian ini mencari jawaban yang lebih mendalam. Di antara ketersediaan lapangan kerja (TPT) dan kualitas modal manusia (RLS), **pengungkit manakah** yang secara statistik memiliki dampak **paling signifikan** dalam menurunkan **kemiskinan di Jawa Barat** pada periode pemulihan ekonomi saat ini?

### 🎯 **Tujuan Proyek**

---

Berdasarkan latar belakang tersebut, tujuan dari penelitian ini adalah:

1. Menganalisis pengaruh **Tingkat Pengangguran Terbuka (TPT)** secara **parsial** terhadap **Persentase Penduduk Miskin (PPM)** di kabupaten/kota Jawa Barat.

2. Menganalisis pengaruh **Rata-Rata Lama Sekolah (RLS)** secara **parsial** terhadap **Persentase Penduduk Miskin (PPM)** di kabupaten/kota Jawa Barat.

3. Menganalisis pengaruh **TPT dan RLS** secara **simultan (bersama-sama)** terhadap **Persentase Penduduk Miskin (PPM)** di kabupaten/kota Jawa Barat.

4. Mengidentifikasi faktor (**antara TPT dan RLS**) yang memiliki pengaruh **paling dominan** terhadap **Persentase Penduduk Miskin (PPM)** di Jawa Barat selama periode 2021-2024.

### 📊 **Data & Variabel**

---

<div align="center">
  <img src="assets/images/bps.png" width="150" align="center">
</div>

##### 🔢 *Variabel Prediktor (X)*
* Umur Harapan Hidup (UHH)
* Harapan Lama Sekolah (HLS)
* Rata-Rata Lama Sekolah (RLS)
* Pengeluaran Per Kapita Disesuaikan

##### 📈 *Variabel Target (Y)*
* Laju Pertumbuhan Produk Domestik Regional Bruto Atas Dasar Harga Konstan (persen)

### 🧭 **Metodologi**

---

Proyek ini menggunakan dua pendekatan utama:

1. **Persiapan (*Data Wrangling*)**: tahap awal untuk membersihkan, merapikan, dan menyusun data lintas-waktu dan lintas-provinsi agar siap dianalisis. Termasuk penanganan missing value, konsistensi format, serta transformasi variabel bila diperlukan.

2. **Analisis Data Eksploratif**: eksplorasi awal untuk memahami pola, tren, dan distribusi variabel. Visualisasi dan statistik ringkas digunakan untuk mengidentifikasi karakteristik utama serta potensi hubungan antarvariabel.

3. **Pemilihan Model (Uji Spesifikasi)**: penentuan model panel yang paling sesuai (misalnya *Fixed Effect* atau *Random Effect*) melalui uji spesifikasi. Tahap ini memastikan model yang dipilih mampu menangkap variasi antar-provinsi dan antar-waktu secara tepat.

4. **Uji Asumsi Klasik**: pengujian asumsi dasar regresi (seperti normalitas residual, heteroskedastisitas, autokorelasi, dan *cross-sectional dependence*) untuk menjamin validitas hasil estimasi.

5. **Visualisasi Tren Ternormalisasi (Z-Score)**: pembuatan plot garis ternormalisasi (Z-Score) untuk membandingkan pola pergerakan semua variabel dalam satu grafik secara visual.

6. **Interpretasi Model**: summary model untuk menarik kesimpulan yang berfokus pada:

- *Adjusted R-squared**: seberapa kuat model menjelaskan daya beli.

- **F-statistic p-value**: apakah model signifikan secara simultan.

- **Coefficients (Estimate & p-value)**: variabel X mana yang signifikan secara parsial dan bagaimana arah pengaruhnya (positif/negatif).


### 👥 **Tim Penyusun**

---

* Ade Ariyo Yudanto
* Daumi Rahmatika
* Fitri Hayati
* Nurqalbu Abd. Mutalip
* Putri Aqila