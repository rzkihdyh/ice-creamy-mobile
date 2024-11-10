Rizki Hidayatul Laeli
PBP C
2306245491

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


# Tugas 8

### 1. Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?

Kegunaan const di Flutter:  
Di Flutter, `const` digunakan untuk mendeklarasikan objek yang immutable (tidak dapat diubah) pada saat kompilasi, bukan pada saat runtime. Ketika suatu widget atau objek dideklarasikan dengan `const`, Flutter dapat mengoptimalkan penggunaan memori dan meningkatkan performa, karena objek tersebut hanya dibuat sekali, dan referensinya digunakan berulang kali.

Keuntungan ketika menggunakan const pada kode Flutter:
- **Peningkatan Performa**: Flutter dapat menghindari pembuatan objek berulang kali dan memori digunakan lebih efisien.
- **Konsistensi dan Keamanan**: Karena objek bersifat immutable, objek yang dideklarasikan dengan `const` tidak dapat diubah, sehingga mengurangi potensi bug yang disebabkan oleh perubahan yang tidak diinginkan.

Kapan menggunakan const:  
Gunakan `const` ketika Anda yakin bahwa nilai atau objek tidak akan berubah, seperti widget statis yang tidak perlu diperbarui. Misalnya, ketika menggunakan `Text` atau `Icon` yang tidak berubah seiring waktu.

Kapan tidak menggunakan const:  
Jangan gunakan `const` pada widget atau objek yang nilainya berubah selama eksekusi aplikasi, seperti objek yang tergantung pada input pengguna atau data dari server.

### 2. Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!

Column menampilkan elemen secara vertikal, sedangkan Row menampilkan elemen secara horizontal.

**Contoh penggunaan Column**:
```dart
Column(
  children: [
    Text('Item 1'),
    Text('Item 2'),
    Text('Item 3'),
  ],
);
```

Contoh penggunaan Row:
```dart
Row(
  children: [
    Icon(Icons.home),
    Icon(Icons.search),
    Icon(Icons.settings),
  ],
);
```

### 3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!

**Elemen input yang digunakan:**

- **TextFormField**: Digunakan untuk memasukkan berbagai jenis input seperti teks (nama produk, deskripsi, harga, stok, rating).
- **ElevatedButton**: Digunakan untuk mengirimkan form setelah pengguna mengisi semua kolom input.

**Elemen input lain yang tidak digunakan:**

- **Checkbox**: Digunakan untuk memilih opsi yang bersifat boolean (Ya/Tidak).
- **Radio**: Digunakan untuk memilih satu opsi dari beberapa pilihan yang ada.
- **Switch**: Digunakan untuk memilih antara dua keadaan (ON/OFF).
- **Slider**: Digunakan untuk memilih nilai dalam rentang tertentu, seperti rating atau volume.


### 4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?
**Cara mengatur tema dalam Flutter:**  
Untuk mengatur tema di Flutter, kita dapat menggunakan widget `Theme` atau menetapkan tema di `MaterialApp` untuk seluruh aplikasi secara global. Tema ini bisa mencakup berbagai atribut seperti warna, font, dan gaya elemen-elemen UI.

**Contoh:**
```dart
MaterialApp(
  theme: ThemeData(
    primarySwatch: Colors.purple,
    textTheme: TextTheme(
      bodyText1: TextStyle(fontSize: 18.0),
      bodyText2: TextStyle(fontSize: 14.0),
    ),
  ),
  home: MyHomePage(),
);
```

- **Tema Warna**: Menggunakan `primarySwatch` untuk menentukan warna utama aplikasi.
- **Tema Teks**: Menggunakan `textTheme` untuk menentukan gaya teks di seluruh aplikasi.

**Apakah tema sudah diimplementasikan?**  
Ya, pada aplikasi yang dibuat, tema sudah diatur di `AppBar` dengan warna dari `Theme.of(context).colorScheme.primary`, yang menunjukkan penggunaan tema warna.

### 5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?

**Menangani Navigasi di Flutter**: Navigasi dalam Flutter dilakukan menggunakan Navigator untuk berpindah antara halaman (screen). Halaman-halaman ini dapat diatur menggunakan rute (routes) dan dapat dipanggil dengan Navigator.push() untuk menambah halaman baru, atau Navigator.pop() untuk kembali ke halaman sebelumnya.

**Contoh penggunaan navigasi:**

```dart
// Menggunakan Navigator.push untuk membuka halaman baru
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => NewPage()),
);
// Menggunakan Navigator.pop untuk kembali ke halaman sebelumnya
Navigator.pop(context);
```
**Named Routes**: Anda juga dapat menggunakan Navigator.pushNamed() untuk navigasi berbasis nama rute. Rute ini didefinisikan di dalam aplikasi menggunakan onGenerateRoute atau routes di MaterialApp.

**Contoh dengan Named Routes:**
```dart
MaterialApp(
  routes: {
    '/home': (context) => HomePage(),
    '/details': (context) => DetailsPage(),
  },
);
// Untuk navigasi
Navigator.pushNamed(context, '/details');
```
**Navigator 2.0**: Untuk aplikasi yang lebih kompleks dengan navigasi dinamis, Anda bisa menggunakan Navigator 2.0 yang lebih fleksibel dan mendukung lebih banyak kontrol atas navigasi.

**Ringkasan**: Navigasi dalam Flutter dapat dilakukan menggunakan Navigator dengan berbagai metode seperti push, pop, dan pushNamed.