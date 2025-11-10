<!DOCTYPE html>
<html lang="id">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Analisis Panel Kemiskinan Jawa Barat</title>
    <!-- Memuat Tailwind CSS -->
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        /* Menggunakan font Inter yang bersih dan modern */
        @import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap');
        body {
            font-family: 'Inter', sans-serif;
        }
        /* Styling untuk blockquote yang lebih baik daripada div */
        blockquote {
            border-left: 4px solid #3B82F6; /* blue-500 */
            background-color: #EFF6FF; /* blue-50 */
            color: #1E3A8A; /* blue-900 */
            padding: 16px;
            border-radius: 0 8px 8px 0;
            margin: 24px 0;
            font-style: italic;
        }
        blockquote p {
            margin-bottom: 12px;
        }
        blockquote p:last-child {
            margin-bottom: 0;
        }
        /* Styling untuk tag code */
        code {
            background-color: #F3F4F6; /* gray-100 */
            color: #DC2626; /* red-600 */
            padding: 2px 6px;
            border-radius: 4px;
            font-family: monospace;
            font-size: 0.9em;
        }
    </style>
</head>
<body class="bg-gray-100 text-gray-900">

    <!-- Kontainer Utama -->
    <div class="max-w-4xl mx-auto bg-white shadow-2xl rounded-lg overflow-hidden my-12">
        
        <!-- Banner Gambar -->
        <!-- Pastikan path 'assets/images/banner.png' benar -->
        <img src="assets/images/banner.png" alt="Project Banner" class="w-full h-64 object-cover" onerror="this.src='https://placehold.co/1200x400/3B82F6/FFFFFF?text=Banner+Proyek'; this.onerror=null;">

        <!-- Konten Teks -->
        <div class="p-8 md:p-12">

            <!-- Pendahuluan -->
            <section class="mb-10">
                <h2 class="text-3xl font-bold text-gray-800 mb-5 pb-2 border-b-2 border-blue-500 flex items-center">
                    <span class="mr-3">📘</span> <strong>Pendahuluan</strong>
                </h2>
                <p class="text-lg text-gray-700 leading-relaxed">
                    Proyek ini merupakan analisis data panel (2021-2024) untuk menguji dampak pengangguran (TPT) dan pendidikan (RLS) terhadap tingkat kemiskinan di 27 kabupaten/kota di Jawa Barat.
                </p>
            </section>

            <!-- Latar Belakang -->
            <section class="mb-10">
                <h2 class="text-3xl font-bold text-gray-800 mb-5 pb-2 border-b-2 border-blue-500 flex items-center">
                    <span class="mr-3">📖</span> <strong>Latar Belakang</strong>
                </h2>
                <p class="text-base md:text-lg text-gray-700 mb-4 leading-relaxed">
                    Jawa Barat menghadirkan suatu anomali. sebagai lumbung industri dan populasi terbesar, <strong>kemiskinan</strong> tetap menjadi <strong>masalah kronis</strong>. Kebijakan publik secara tradisional berfokus pada dua pilar untuk mengatasinya, yaitu menurunkan <strong>Tingkat Pengangguran Terbuka (TPT)</strong> dan <strong>meningkatkan Rata-rata Lama Sekolah (RLS)</strong>. Namun, efektivitas kedua pilar ini dipertanyakan. Fokus pada TPT berisiko mengabaikan fenomena pekerja miskin yang <strong>memiliki pekerjaan</strong> namun <strong>upahnya tidak mencukupi</strong>, sementara fokus pada RLS dihadapkan pada realitas ketidakcocokan struktural di mana <strong>lulusan terdidik tidak selalu terserap oleh pasar kerja yang ada</strong>.
                </p>
                <p class="text-base md:text-lg text-gray-700 leading-relaxed">
                    Proyek ini tidak bertujuan untuk membuktikan ulang teori, melainkan untuk menguji efektivitas kuantitatif dari kedua pilar kebijakan tersebut. Dengan menggunakan data panel 2021-2024 dari 27 kabupaten/kota di Jawa Barat, penelitian ini mencari jawaban yang lebih mendalam. Di antara ketersediaan lapangan kerja (TPT) dan kualitas modal manusia (RLS), <strong>pengungkit manakah</strong> yang secara statistik memiliki dampak <strong>paling signifikan</strong> dalam menurunkan <strong>kemiskinan di Jawa Barat</strong> pada periode pemulihan ekonomi saat ini?
                </p>
            </section>

            <!-- Tujuan Proyek -->
            <section class="mb-10">
                <h2 class="text-3xl font-bold text-gray-800 mb-5 pb-2 border-b-2 border-blue-500 flex items-center">
                    <span class="mr-3">🎯</span> <strong>Tujuan Proyek</strong>
                </h2>
                <ol class="list-decimal list-inside text-base md:text-lg text-gray-700 space-y-3 leading-relaxed">
                    <li>Menganalisis pengaruh <strong>Tingkat Pengangguran Terbuka (TPT)</strong> secara <strong>parsial</strong> terhadap <strong>Persentase Penduduk Miskin (PPM)</strong> di kabupaten/kota Jawa Barat.</li>
                    <li>Menganalisis pengaruh <strong>Rata-Rata Lama Sekolah (RLS)</strong> secara <strong>parsial</strong> terhadap <strong>Persentase Penduduk Miskin (PPM)</strong> di kabupaten/kota Jawa Barat.</li>
                    <li>Menganalisis pengaruh <strong>TPT dan RLS</strong> secara <strong>simultan (bersama-sama)</strong> terhadap <strong>Persentase Penduduk Miskin (PPM)</strong> di kabupaten/kota Jawa Barat.</li>
                    <li>Mengidentifikasi faktor (<strong>antara TPT dan RLS</strong>) yang memiliki pengaruh <strong>paling dominan</strong> terhadap <strong>Persentase Penduduk Miskin (PPM)</strong> di Jawa Barat selama periode 2021-2024.</li>
                </ol>
            </section>

            <!-- Data & Variabel -->
            <section class="mb-10">
                <h2 class="text-3xl font-bold text-gray-800 mb-5 pb-2 border-b-2 border-blue-500 flex items-center">
                    <span class="mr-3">📊</span> <strong>Data & Variabel</strong>
                </h2>
                
                <div class="flex justify-center my-6">
                    <!-- Pastikan path 'assets/images/bps.png' benar -->
                    <img src="assets/images/bps.png" width="150" alt="Logo BPS" class="grayscale opacity-80" onerror="this.src='https://placehold.co/150x150/9CA3AF/FFFFFF?text=Logo+BPS'; this.onerror=null;">
                </div>

                <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
                    <div>
                        <h5 class="text-xl font-semibold text-gray-700 mb-3 flex items-center">
                            <span class="mr-2">🔢</span> <em>Variabel Prediktor (X)</em>
                        </h5>
                        <ul class="list-disc list-inside text-lg text-gray-700 space-y-2">
                            <li>Tingkat Pengangguran Terbuka (TPT)</li>
                            <li>Rata-Rata Lama Sekolah (RLS)</li>
                        </ul>
                    </div>
                    <div>
                        <h5 class="text-xl font-semibold text-gray-700 mb-3 flex items-center">
                            <span class="mr-2">📈</span> <em>Variabel Target (Y)</em>
                        </h5>
                        <ul class="list-disc list-inside text-lg text-gray-700 space-y-2">
                            <li>Persentase Penduduk Miskin (PPM)</li>
                        </ul>
                    </div>
                </div>
            </section>

            <!-- Ruang Lingkup -->
            <section class="mb-10">
                <h2 class="text-3xl font-bold text-gray-800 mb-5 pb-2 border-b-2 border-blue-500 flex items-center">
                    <span class="mr-3">📦</span> <strong>Ruang Lingkup</strong>
                </h2>
                <ol class="list-decimal list-inside text-base md:text-lg text-gray-700 space-y-3 leading-relaxed">
                    <li><strong>Cakupan</strong>: Penelitian ini menggunakan <strong>data panel tahunan</strong> yang terdiri dari <strong>27 Kabupaten/Kota di Provinsi Jawa Barat</strong> (sebagai <em>unit cross-section</em>) selama periode waktu 2021-2024.</li>
                    <li><strong>Fokus</strong>: Berfokus pada pemodelan hubungan pengaruh secara langsung antara dua faktor utama (Tingkat Pengangguran Terbuka dan Rata-Rata Lama Sekolah) terhadap Persentase Penduduk Miskin. Analisis mencakup pemilihan model regresi data panel (FEM/REM), pengujian asumsi klasik, dan penerapan koreksi model (<em>Driscoll-Kraay Standard Errors</em>) untuk mengukur kekuatan dan arah hubungan.</li>
                    <li><strong>Batasan</strong>: Penelitian ini tidak mencakup faktor-faktor eksternal lain yang secara teoretis dapat memengaruhi kemiskinan (misalnya, inflasi, Gini Ratio, pertumbuhan PDRB, atau belanja bantuan sosial pemerintah) di luar dua variabel independen yang telah dipilih.</li>
                </ol>
            </section>

            <!-- Metodologi -->
            <section class="mb-10">
                <h2 class="text-3xl font-bold text-gray-800 mb-5 pb-2 border-b-2 border-blue-500 flex items-center">
                    <span class="mr-3">🧭</span> <strong>Metodologi</strong>
                </h2>

                <!-- 1. Persiapan Data -->
                <h3 class="text-2xl font-semibold text-gray-700 mb-4 mt-8 flex items-center">
                    <span class="mr-3">🧹</span> <strong>1. Persiapan Data (<em>Data Wrangling</em>)</strong>
                </h3>
                <ul class="list-disc list-inside text-gray-700 space-y-2 text-base md:text-lg leading-relaxed">
                    <li><strong>Pengumpulan Data</strong>: Mengumpulkan data sekunder data panel (tahunan 2021-2024) dari Badan Pusat Statistik (BPS) Jawa Barat.</li>
                    <li><strong>Cakupan Data</strong>: Data mencakup 3 variabel (<code>PPM</code>, <code>TPT</code>, <code>RLS</code>) untuk 27 Kabupaten/Kota di Jawa Barat (<code>N=27</code>, <code>T=4</code>, <code>Total Observasi=108</code>).</li>
                    <li><strong>Pembersihan & Konsistensi</strong>:
                        <ul class="list-circle list-inside ml-6 space-y-2 mt-2">
                            <li>Memastikan semua variabel telah diformat sebagai numerik (<code>&lt;dbl&gt;</code>) menggunakan <code>glimpse()</code>.</li>
                            <li>Menggabungkan (<code>merge</code>) dataset yang terpisah menjadi satu data frame panel akhir yang seimbang (<em>balanced panel</em>).</li>
                        </ul>
                    </li>
                </ul>
                <figure class="my-6 text-center">
                    <!-- Pastikan path 'assets/images/Gambar 1 - Glimpse Data.png' benar -->
                    <img src="assets/images/Gambar 1 - Glimpse Data.png" alt="Glimpse Data" style="width: 400px; height: auto;" class="mx-auto rounded-lg shadow-md" onerror="this.src='https://placehold.co/400x150/EEEEEE/333333?text=Glimpse+Data'; this.onerror=null;">
                    <figcaption class="text-sm italic text-gray-600 mt-2">
                        Gambar 1. Cuplikan Data
                    </figcaption>
                </figure>

                <!-- 2. EDA -->
                <h3 class="text-2xl font-semibold text-gray-700 mb-4 mt-8 flex items-center">
                    <span class="mr-3">🔍</span> <strong>2. Analisis Data Eksplorasi (EDA)</strong>
                </h3>
                <ul class="list-disc list-inside text-gray-700 space-y-2 text-base md:text-lg leading-relaxed">
                    <li><strong>Statistik Deskriptif</strong>: Menggunakan <code>describeBy()</code> untuk memahami karakteristik, sebaran (mean, median), dan disparitas data, baik dikelompokkan berdasarkan <code>Wilayah</code> (antar kab/kota) maupun <code>Tahun</code>.</li>
                    <li><strong>Uji Korelasi Pearson</strong>: Membuat matriks korelasi untuk mengukur kekuatan dan arah hubungan linear awal antar variabel, serta sebagai deteksi dini risiko multikolinearitas.</li>
                </ul>
                <figure class="my-6 text-center">
                    <!-- Pastikan path 'assets/images/Gambar 2 - Heatmap Matriks Korelasi.png' benar -->
                    <img src="assets/images/Gambar 2 - Heatmap Matriks Korelasi.png" alt="Heatmap Matriks Korelasi" style="width: 500px; height: auto;" class="mx-auto rounded-lg shadow-md" onerror="this.src='https://placehold.co/500x350/EEEEEE/333333?text=Heatmap+Korelasi'; this.onerror=null;">
                    <figcaption class="text-sm italic text-gray-600 mt-2">
                        Gambar 2. Heatmap Matriks Korelasi
                    </figcaption>
                </figure>

                <!-- Blockquote Interpretasi Korelasi -->
                <blockquote>
                    <p>
                        Berdasarkan matriks korelasi, teridentifikasi sebuah 
                        <strong>korelasi negatif yang kuat</strong> antara 
                        <code>PPM</code> (Kemiskinan) dan <code>RLS</code> (Pendidikan) 
                        (<strong>-0.73</strong>), yang mengindikasikan bahwa 
                        <strong>pendidikan yang lebih tinggi</strong> sangat terkait dengan 
                        <strong>kemiskinan yang lebih rendah</strong>.
                    </p>
                    <p>
                        Namun, hubungan yang lebih kompleks terlihat pada variabel lain. 
                        Ditemukan <strong>korelasi negatif yang sangat lemah (-0.18)</strong> 
                        antara <code>PPM</code> dan <code>TPT</code> (Pengangguran), yang kemungkinan 
                        disebabkan oleh fenomena <em>"pekerja miskin"</em> (<em>working poor</em>) 
                        yang <strong>tidak terhitung sebagai penganggur (TPT) namun tetap miskin</strong>.
                    </p>
                    <p>
                        Selain itu, <strong>korelasi positif lemah (0.31)</strong> antara 
                        <code>TPT</code> dan <code>RLS</code> mengindikasikan adanya 
                        <em>mismatch</em> di pasar kerja, di mana 
                        <strong>lulusan yang lebih terdidik</strong> mungkin 
                        <strong>secara selektif menganggur</strong> sambil menunggu 
                        <strong>pekerjaan yang layak</strong>.
                    </p>
                </blockquote>

                <!-- 3. Pemodelan -->
                <h3 class="text-2xl font-semibold text-gray-700 mb-4 mt-8 flex items-center">
                    <span class="mr-3">🔧</span> <strong>3. Pemodelan Regresi Data Panel</strong>
                </h3>
                <ul class="list-disc list-inside text-gray-700 space-y-2 text-base md:text-lg leading-relaxed">
                    <li><strong>Formulasi Model</strong>: Memodelkan <code>PPM</code> (Y) sebagai fungsi dari <code>TPT</code> (X1) dan <code>RLS</code> (X2) menggunakan paket <code>plm</code> di R.
                        <ul class="list-circle list-inside ml-6 space-y-2 mt-2">
                            <li>Model Utama: <code>PPM ~ TPT + RLS</code></li>
                        </ul>
                    </li>
                    <li><strong>Estimasi Model Awal</strong>: Melakukan estimasi pada tiga model dasar regresi data panel untuk perbandingan:
                        <ol class="list-decimal list-inside ml-6 space-y-2 mt-2">
                            <li><em>Common Effect Model</em> (Pooled OLS)</li>
                            <li><em>Fixed Effect Model</em> (FEM)</li>
                            <li><em>Random Effect Model</em> (REM)</li>
                        </ol>
                    </li>
                </ul>

                <!-- 4. Pemilihan Model -->
                <h3 class="text-2xl font-semibold text-gray-700 mb-4 mt-8 flex items-center">
                    <span class="mr-3">🧩</span> <strong>4. Pemilihan Model & Uji Spesifikasi</strong>
                </h3>
                <ul class="list-disc list-inside text-gray-700 space-y-2 text-base md:text-lg leading-relaxed">
                    <li><strong>Pemilihan Model</strong>: Menjalankan serangkaian uji spesifikasi untuk memilih model terbaik:
                        <ol class="list-decimal list-inside ml-6 space-y-2 mt-2">
                            <li><strong>Uji Chow (<code>pFtest</code>)</strong>: Memilih antara <em>Common Effect</em> vs <em>Fixed Effect</em>.</li>
                            <li><strong>Uji Lagrange Multiplier (<code>plmtest</code>)</strong>: Memilih antara <em>Common Effect</em> vs <em>Random Effect</em>.</li>
                            <li><strong>Uji Hausman (<code>phtest</code>)</strong>: Memilih antara <em>Fixed Effect</em> vs <em>Random Effect</em>.</li>
                        </ol>
                    </li>
                    <li class="mt-2">(Hasil dari uji ini mengarahkan pada pemilihan <em>Random Effect</em> Model (REM)).</li>
                </ul>

                <!-- 5. Validasi Model -->
                <h3 class="text-2xl font-semibold text-gray-700 mb-4 mt-8 flex items-center">
                    <span class="mr-3">📐</span> <strong>5. Validasi Model & Uji Asumsi Klasik</strong>
                </h3>
                <ul class="list-disc list-inside text-gray-700 space-y-2 text-base md:text-lg leading-relaxed">
                    <li><strong>Diagnostik</strong>: Memvalidasi keandalan statistik model <code>REM</code> yang terpilih.
                        <ol class="list-decimal list-inside ml-6 space-y-2 mt-2">
                            <li><strong>Multikolinearitas</strong>: Menggunakan <code>vif()</code> pada model OLS Pooled (VIF < 10).</li>
                            <li><strong>Normalitas Residual</strong>: Menggunakan <code>shapiro.test()</code> (p-value > 0.05).</li>
                            <li><strong>Heteroskedastisitas</strong>: Menggunakan <code>bptest()</code> (p-value > 0.05).</li>
                            <li><strong>Autokorelasi</strong>: Menggunakan <code>pdwtest()</code> (Durbin-Watson panel) (p-value > 0.05).</li>
                            <li><strong>Cross-Sectional Dependence (CSD)</strong>: Menggunakan <code>pcdtest()</code> (Pesaran CD) (p-value > 0.05).</li>
                        </ol>
                    </li>
                </ul>
                
                <!-- 6. Remediasi Model -->
                <h3 class="text-2xl font-semibold text-gray-700 mb-4 mt-8 flex items-center">
                    <span class="mr-3">🩺</span> <strong>6. Remediasi Model (Perbaikan Model)</strong>
                </h3>
                <ul class="list-disc list-inside text-gray-700 space-y-2 text-base md:text-lg leading-relaxed">
                    <li><strong>Diagnosis</strong>: Hasil dari Uji Asumsi (Langkah 5) menunjukkan adanya pelanggaran asumsi <strong>Autokorelasi</strong> dan <strong>Cross-Sectional Dependence (CSD)</strong> yang signifikan.</li>
                    <li><strong>Solusi</strong>: Untuk mengatasi pelanggaran asumsi ganda tersebut, model <code>REM</code> standar tidak dapat digunakan. Solusi yang diterapkan adalah menggunakan <strong>Driscoll-Kraay Standard Errors (SCC)</strong>.</li>
                    <li><strong>Penerapan</strong>: Menghitung ulang <em>Standard Error</em> dan p-value model REM dengan memanggil <code>summary(random, vcov = vcovSCC(random))</code>. Metode ini menghasilkan estimasi koefisien yang <em>robust</em> (kebal) terhadap autokorelasi dan CSD.</li>
                </ul>

                <!-- 7. Interpretasi -->
                <h3 class="text-2xl font-semibold text-gray-700 mb-4 mt-8 flex items-center">
                    <span class="mr-3">💡</span> <strong>7. Interpretasi Model</strong>
                </h3>
                <ul class="list-disc list-inside text-gray-700 space-y-2 text-base md:text-lg leading-relaxed">
                    <li><strong>Interpretasi Hasil</strong>: Menganalisis output <code>summary()</code> model yang telah dikoreksi (<code>robust SCC</code>) untuk menarik kesimpulan.
                        <ol class="list-decimal list-inside ml-6 space-y-2 mt-2">
                            <li><strong>R-squared</strong>: Seberapa kuat model menjelaskan variasi <code>PPM</code>.</li>
                            <li><strong>Chisq p-value (dari Robust Wald Test)</strong>: Apakah model signifikan secara simultan.</li>
                            <li><strong>Coefficients (Estimate & Pr(>|z|))</strong>: Variabel (<code>TPT</code> atau <code>RLS</code>) mana yang signifikan secara parsial dan bagaimana arah pengaruhnya (positif/negatif).</li>
                        </ol>
                    </li>
                </ul>
            </section>

            <!-- Tim Penyusun -->
            <section class="mt-12 pt-8 border-t-2 border-gray-200">
                <h2 class="text-3xl font-bold text-gray-800 mb-5 pb-2 flex items-center">
                    <span class="mr-3">👥</span> <strong>Tim Penyusun</strong>
                </h2>
                <ul class="list-disc list-inside text-lg text-gray-700 space-y-3">
                    <li>Ade Ariyo Yudanto</li>
                    <li>Daumi Rahmatika</li>
                    <li>Fitri Hayati</li>
                    <li>Nurqalbu Abd. Mutalip</li>
                    <li>Putri Aqila</li>
                </ul>
            </section>

        </div> <!-- /end content padding -->
    </div> <!-- /end container -->

</body>
</html>