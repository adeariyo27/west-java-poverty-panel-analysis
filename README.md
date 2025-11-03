![](assets/images/banner.png)


### 📘 **Pendahuluan**

---

Proyek ini merupakan analisis data panel (2021-2024) untuk menguji dampak pengangguran (TPT) dan pendidikan (RLS) terhadap tingkat kemiskinan di 27 kabupaten/kota di Jawa Barat.

### 📖 **Latar Belakang**

---

Jawa Barat menghadirkan suatu anomali. sebagai lumbung industri dan populasi terbesar, **kemiskinan** tetap menjadi **masalah kronis**. Kebijakan publik secara tradisional berfokus pada dua pilar untuk mengatasinya, yaitu menurunkan **Tingkat Pengangguran Terbuka (TPT)** dan **meningkatkan Rata-rata Lama Sekolah (RLS)**. Namun, efektivitas kedua pilar ini dipertanyakan. Fokus pada TPT berisiko mengabaikan fenomena pekerja miskin yang **memiliki pekerjaan** namun **upahnya tidak mencukupi**, sementara fokus pada RLS dihadapkan pada realitas ketidakcocokan struktural di mana **lulusan terdidik tidak selalu terserap oleh pasar kerja yang ada**.

Proyek ini tidak bertujuan untuk membuktikan ulang teori, melainkan untuk menguji efektivitas kuantitatif dari kedua pilar kebijakan tersebut. Dengan menggunakan data panel 2021-2024 dari 27 kabupaten/kota di Jawa Barat, penelitian ini mencari jawaban yang lebih mendalam. Di antara ketersediaan lapangan kerja (TPT) dan kualitas modal manusia (RLS), **pengungkit manakah** yang secara statistik memiliki dampak **paling signifikan** dalam menurunkan **kemiskinan di Jawa Barat** pada periode pemulihan ekonomi saat ini?

### 🎯 **Tujuan Proyek**

---

Berdasarkan latar belakang tersebut, tujuan dari proyek ini adalah:

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
* Tingkat Pengangguran Terbuka (TPT)
* Rata-Rata Lama Sekolah (RLS)

##### 📈 *Variabel Target (Y)*
* Persentase Penduduk Miskin (PPM)

### 📦 **Ruang Lingkup**

---

1. **Cakupan**: Penelitian ini menggunakan **data panel tahunan** yang terdiri dari **27 Kabupaten/Kota di Provinsi Jawa Barat** (sebagai *unit cross-section*) selama periode waktu 2021-2024.

2. **Fokus**: Berfokus pada pemodelan hubungan pengaruh secara langsung antara dua faktor utama (Tingkat Pengangguran Terbuka dan Rata-Rata Lama Sekolah) terhadap Persentase Penduduk Miskin. Analisis mencakup pemilihan model regresi data panel (FEM/REM), pengujian asumsi klasik, dan penerapan koreksi model (*Driscoll-Kraay Standard Errors*) untuk mengukur kekuatan dan arah hubungan.

3. **Batasan**: Penelitian ini tidak mencakup faktor-faktor eksternal lain yang secara teoretis dapat memengaruhi kemiskinan (misalnya, inflasi, Gini Ratio, pertumbuhan PDRB, atau belanja bantuan sosial pemerintah) di luar dua variabel independen yang telah dipilih.

### 🧭 **Metodologi**

---

#### **1. Persiapan Data**

- **Pengumpulan Data**: Mengumpulkan data sekunder data panel (tahunan 2021-2024) dari Badan Pusat Statistik (BPS) Jawa Barat.

- **Cakupan Data**: Data mencakup 3 variabel (`PPM`, `TPT`, `RLS`) untuk 27 Kabupaten/Kota di Jawa Barat (`N=27`, `T=4`, `Total Observasi=108`).

- **Pembersihan & Konsistensi**:

  - Menggunakan `read_csv2` untuk memuat data yang menggunakan pemisah semikolon (;) dan desimal koma (,).

  - Memastikan semua variabel telah diformat sebagai numerik (`<dbl>`) menggunakan `glimpse()`.

  - Menggabungkan (`merge`) dataset yang terpisah menjadi satu data frame panel akhir yang seimbang (*balanced panel*).


### 👥 **Tim Penyusun**

---

* Ade Ariyo Yudanto
* Daumi Rahmatika
* Fitri Hayati
* Nurqalbu Abd. Mutalip
* Putri Aqila