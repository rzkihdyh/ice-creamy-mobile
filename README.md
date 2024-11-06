# Tugas 7
### 1.Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.

Stateless Widget adalah widget yang tampilannya tetap sama selama aplikasi berjalan. Setelah dibuat, widget ini tidak akan berubah kecuali seluruh widget di-refresh. Stateless widget cocok untuk elemen statis yang tidak perlu berubah, seperti teks, ikon, atau tombol. Contoh stateless widget adalah **Text**, **Icon**, dan **IconButton**.

Stateful Widget, sebaliknya, adalah widget yang bisa berubah selama aplikasi berjalan. Ini memungkinkan pengguna berinteraksi, misalnya dengan memasukkan data, menggerakkan slider, atau mencentang kotak, sehingga tampilan widget dapat berubah sesuai interaksi tersebut. Contoh stateful widget adalah **Checkbox**, **Slider**, dan **TextField**.

Perbedaan utama antara keduanya adalah bahwa Stateful widget dapat menyimpan dan mengubah data yang memengaruhi tampilan UI, sementara Stateless widget tidak bisa.

### 2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.

- **Scaffold**: Menyediakan struktur dasar halaman, termasuk AppBar dan body.
- **AppBar**: Menampilkan header aplikasi dengan judul "Ice Creamy."
- **Padding**: Menambahkan ruang di sekitar Column utama.
- **Column**: Mengatur widget dalam susunan vertikal di body.
- **Row**: Menyusun tiga InfoCard secara horizontal.
- **Icon dan Text**: Menyajikan ikon dan teks di setiap ItemCard.
- **Card**: Menampilkan InfoCard dalam format kartu.
- **InfoCard**: Widget khusus berupa Card yang menampilkan informasi seperti NPM, Nama, dan Kelas.
- **ItemCard**: Kartu yang menampilkan ikon dan teks untuk setiap item dalam daftar.
- **GridView.count**: Menyusun beberapa ItemCard dalam tampilan grid dengan tiga kolom.
- **Material**: Menentukan warna latar dan bentuk untuk ItemCard.
- **InkWell**: Menangani interaksi pengguna pada ItemCard, seperti memunculkan SnackBar ketika ditekan.
- **SnackBar**: Menampilkan pesan ketika salah satu ItemCard ditekan oleh pengguna.

### 3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

Fungsi `setState()` pada **StatefulWidget** digunakan untuk memberi tahu framework bahwa ada perubahan dalam state yang memerlukan pembaruan UI. Ketika `setState()` dipanggil, Flutter akan memanggil ulang metode `build()` untuk menampilkan tampilan terbaru berdasarkan perubahan state tersebut. Variabel yang terdampak oleh fungsi ini adalah semua variabel yang didefinisikan dalam kelas **State** tersebut, terutama yang digunakan dalam metode `build()`.

### 4. Jelaskan perbedaan antara const dengan final.

`const` adalah keyword yang digunakan untuk mendeklarasikan nilai konstan yang harus ditentukan pada saat compile-time dan tidak akan pernah berubah. Biasanya digunakan untuk widget yang tidak perlu di-render ulang, misalnya setting untuk nilai phi, yang pasti tidak akan berubah.
`final` juga hanya diinisialisasi sekali, namun nilainya dapat ditentukan saat runtime. Artinya, nilai dari variabel final bisa di-assign ketika program dijalankan, bukan harus pada saat compile. Misalnya, `final date = DateTime.now();`.

### 5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.

Langkah pertama adalah membuat direktori bernama **ice-creamy** pada lokal. Kemudian, generate proyek Flutter melalui terminal dengan perintah `flutter create ice-creamy`. Setelah itu, buat file baru bernama **menu.dart** di dalam direktori `ice-creamy-mobil/lib`. Pindahkan kode yang berisi **class MyHomePage** dan **class _MyHomePageState** ke file **menu.dart**, lalu tambahkan impor `ice-creamy-mobil/menu.dart` agar program dapat mengenali **class MyHomePage**. Selanjutnya, ubah widget pada **menu.dart** menjadi **stateless widget** dan buat komponen **InfoCard** serta **Button Card** dengan ikon di **menu.dart**. Di **main.dart**, sesuaikan tema warna aplikasi dan tambahkan variabel **color** pada **ItemHomepage**, serta atur warna pada masing-masing tombol. 

Langkah terakhir adalah membuat repositori di GitHub dan menghubungkannya dengan proyek lokal. Setelah membuat repositori baru di GitHub, buka terminal di direktori proyek lokal dan jalankan perintah `git init` untuk inisialisasi Git. Selanjutnya, tambahkan repositori GitHub sebagai remote dengan perintah `git remote add origin`. Lalu, add, commit dan push untuk menyimpan perubahan.
