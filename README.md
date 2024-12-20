Rizki Hidayatul Laeli - PBP C - 2306245491

# Tugas 7
<details>

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
</details>

# Tugas 8
<details>

### 1. Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?

Kegunaan const di Flutter:  
Di Flutter, `const` digunakan untuk mendeklarasikan variable yang immutable (tidak dapat diubah) yang nilainya bersifat konstan dan harus sudah diketahui pada saat waktu kompilasi berjalan, artinya adalah nilai dari variabel tersebut harus sudah di berikan secara langsung

Keuntungan ketika menggunakan const pada kode Flutter:
- **Peningkatan Performa**: Flutter dapat menghindari pembuatan objek berulang kali, sehingga dapat mengefisiensi memori. Hal ini dapat mempercepat waktu render dan membuat aplikasi lebih responsif.
- **Konsistensi dan Keamanan**: Karena objek bersifat immutable, objek yang dideklarasikan dengan `const` tidak dapat diubah, sehingga mengurangi potensi bug yang disebabkan oleh perubahan yang tidak diinginkan.

Kapan menggunakan const:  
`const` digunakan ketika yakin bahwa nilai atau objek tidak akan berubah, seperti widget statis yang tidak perlu diperbarui. Misalnya, ketika menggunakan `Text` atau `Icon` yang tidak berubah seiring waktu.

Kapan tidak menggunakan const:  
Sebaiknya tidak menggunakan `const` pada widget atau objek yang nilainya berubah selama eksekusi aplikasi, seperti objek yang tergantung pada input pengguna atau data dari server.

sumber: https://sulthanalihsan.medium.com/perbedaan-final-dan-const-pada-bahasa-dart-552d2149f

### 2. Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!

Pada flutter, `column` menampilkan elemen secara vertikal (dari atas ke bawah), sedangkan `row` menampilkan elemen secara horizontal (dari kiri ke kanan).

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
    InfoCard(title: 'NPM', content: npm, color: const Color.fromARGB(255, 181, 235, 210)),
    InfoCard(title: 'Name', content: name, color: const Color.fromARGB(255, 181, 235, 210)),
    InfoCard(title: 'Class', content: className, color: const Color.fromARGB(255, 181, 235, 210)),
    ],
);
```

### 3. Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!

**Elemen input yang digunakan:**

- **TextFormField**: Digunakan untuk memasukkan berbagai jenis input seperti teks (nama produk, deskripsi, harga, stok, rating).
- **ElevatedButton**: Digunakan untuk menyimpan atau mengirimkan data form setelah pengguna mengisi semua kolom input.

**Elemen input lain yang tidak digunakan:**

- **Checkbox**: Digunakan untuk memilih opsi yang bersifat boolean (Ya/Tidak).
- **Radio Button**: Digunakan untuk memilih satu opsi dari beberapa pilihan yang ada.
- **Switch**: Digunakan untuk memilih antara dua keadaan (ON/OFF).
- **Slider**: Digunakan untuk memilih nilai dalam rentang tertentu, seperti rating atau volume.
- **Dropdown Button**: Untuk pilihan yang menampilkan daftar pilihan tertentu.

### 4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?

Untuk mengatur tema di Flutter, dapat dilakukan dengan mendefinisikan `ThemeData` pada root widget `MaterialApp` untuk seluruh aplikasi secara global. Tema ini bisa mencakup berbagai atribut seperti warna, font, dan gaya elemen-elemen UI.

**Contoh dari kode yang diimplementasikan:**
```dart
MaterialApp(
  title: 'Ice Creamy', 
  theme: ThemeData(
    primaryColor: const Color.fromARGB(255, 126, 212, 173), // Warna utama untuk elemen inti UI
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Colors.teal, // Warna material utama aplikasi
    ).copyWith(
      secondary: const Color.fromARGB(255, 4, 71, 30), // Warna aksen tambahan
    ),
    useMaterial3: true, // Menggunakan Material Design 3 untuk tampilan modern
  ),
  home: MyHomePage(),
);
```
- **Tema Warna Utama (primaryColor dan primarySwatch)**: primaryColor diatur sebagai warna utama untuk elemen UI seperti AppBar, sementara primarySwatch menggunakan palet warna Colors.teal, memberikan variasi warna yang konsisten di seluruh aplikasi.
- **Warna Sekunder (secondary)**: Warna aksen sekunder diatur untuk elemen yang membutuhkan warna tambahan, misalnya tombol sekunder.
- **Material Design 3: useMaterial3**: true mengaktifkan tampilan Material Design 3 untuk estetika UI yang lebih modern.

**Apakah tema sudah diimplementasikan?**  
Ya, dalam aplikasi ini tema sudah diimplementasikan. Misalnya, AppBar menggunakan warna dari `Theme.of(context).colorScheme.primary`, yang diambil dari primarySwatch `(Colors.teal)`. Dengan pengaturan ini, aplikasi memiliki tampilan yang konsisten dan tema warna yang serasi pada elemen-elemen UI di seluruh halaman.

### 5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?

Salah satu metode yang dapat dimanfaatkan untuk melakukan perpindahan antar halaman dalam aplikasi adalah dengan menggunakan widget Navigator. Melalui BuildContext, kita dapat mengakses Navigator untuk berpindah ke halaman baru atau kembali ke halaman sebelumnya menggunakan fungsi-fungsi seperti `pop`, `push`, dan `pushReplacement`.

**1. Navigator.push**
`Navigator.push` digunakan untuk menambahkan halaman baru di atas stack navigasi. Halaman baru ini akan ditampilkan di atas halaman sebelumnya, memungkinkan pengguna untuk kembali ke halaman sebelumnya.

Contoh Implementasi:

Pada widget `ItemCard` di `product_card.dart`, ketika pengguna menekan kartu "Tambah Produk", aplikasi akan menggunakan `Navigator.push` untuk membuka halaman `ProductEntryFormPage`.

```dart
onTap: () {
  if (item.name == "Tambah Produk") {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ProductEntryFormPage(),
      ),
    );
  }
}
```

Penjelasan:
`Navigator.push` akan menambahkan halaman `ProductEntryFormPage` ke dalam stack navigasi. Halaman sebelumnya tetap ada di bawahnya, dan pengguna bisa kembali ke halaman sebelumnya.

**2. Navigator.pop**
`Navigator.pop` digunakan untuk menutup halaman yang sedang aktif dan kembali ke halaman sebelumnya di stack navigasi. Hal ini dapat digunakan saat kita ingin menghapus halaman aktif dari stack.

Contoh Implementasi:

Pada `productentry_form.dart`, ketika produk berhasil disimpan, pengguna dapat menutup dialog pop-up dan kembali ke form dengan menekan tombol "OK".

```dart
actions: [
TextButton(
    child: const Text("OK"),
    onPressed: () {
    Navigator.pop(context);
    _formKey.currentState!.reset(); //reset kalo udh ok
    },
),
],
```

Penjelasan:
`Navigator.pop` menghapus halaman atau dialog yang sedang aktif dari stack, mengembalikan pengguna ke halaman sebelumnya. Di sini, dialog ditutup dan pengguna kembali ke form `ProductEntryFormPage`.

**3. Navigator.pushReplacement**
`Navigator.pushReplacement` menggantikan halaman aktif dengan halaman baru tanpa menambah halaman baru ke stack. Ini berguna untuk menghapus halaman sebelumnya setelah berpindah halaman baru agar pengguna tidak bisa kembali ke halaman yang digantikan.

Contoh Implementasi:

Di `left_drawer.dart`, ketika pengguna memilih "Halaman Utama" atau "Tambah Produk", aplikasi menggunakan `pushReplacement` untuk berpindah halaman tanpa menyimpan halaman sebelumnya di *stack*.

```dart
ListTile(
  leading: const Icon(Icons.home_outlined),
  title: const Text('Halaman Utama'),
  onTap: () {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => MyHomePage(),
      ),
    );
  },
),
ListTile(
  leading: const Icon(Icons.add),
  title: const Text('Tambah Produk'),
  onTap: () {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => ProductEntryFormPage(),
      ),
    );
  },
),
```

Penjelasan:
Dengan `pushReplacement`, halaman aktif digantikan oleh halaman tujuan baru (`MyHomePage` atau `ProductEntryFormPage`). Hal ini memastikan bahwa pengguna tidak bisa kembali ke halaman yang sebelumnya (misalnya, dari `ProductEntryFormPage` ke halaman lain di drawer) karena halaman lama dihapus dari *stack*.
</details>

# Tugas 9
<details>

### 1. Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?

**Mengapa perlu model:**

- Strukturisasi Data: Model membantu kita memetakan struktur data JSON ke dalam objek yang dapat diolah dalam aplikasi. Ini membuat data lebih terorganisir dan mudah diakses.
- Validasi Data: Dengan menggunakan model, kita dapat memastikan data yang diterima atau dikirim sesuai dengan format yang diharapkan.
- Pemeliharaan Kode: Model membuat kode lebih modular dan mudah dipelihara, terutama ketika API berubah.

**Jika tidak membuat model:**

- Kemungkinan Error: Tidak ada keharusan untuk membuat model, tetapi jika kita langsung mengakses JSON tanpa model, potensi error meningkat (misalnya, salah akses key, perubahan struktur JSON dari API, atau tipe data yang tidak sesuai).
- Kesulitan Pemrosesan: Tanpa model, pengolahan data menjadi lebih kompleks dan rawan kesalahan karena data diproses langsung dalam bentuk map atau dynamic.

### 2. Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini

Library http di Flutter digunakan untuk menangani komunikasi dengan API atau server berbasis HTTP. Fungsi utamanya meliputi:

- **Melakukan Request**: Mengirim permintaan ke server menggunakan metode HTTP seperti GET, POST, PUT, atau DELETE.
- **Menerima Response**: Menerima data dari server dalam bentuk string, JSON, atau file.
- **Headers dan Payload**: Mendukung penyertaan header (misalnya, untuk autentikasi) dan payload (misalnya, body JSON pada POST request).
- **Asynchronous**: Mempermudah pengelolaan request secara asinkron untuk menjaga performa aplikasi.

### 3. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.

**Fungsi CookieRequest:**

- **Menyimpan Cookie**: Menyimpan cookie dari server setelah login atau autentikasi, sehingga pengguna tetap terautentikasi selama sesi.
- **Manajemen Session**: Mempermudah pengelolaan sesi pengguna tanpa harus mengirim ulang kredensial setiap kali berinteraksi dengan server.
- **Automatisasi Header**: Cookie yang disimpan akan otomatis ditambahkan ke setiap request berikutnya, mengurangi beban developer untuk menambahkannya secara manual.

**Mengapa perlu dibagikan ke semua komponen aplikasi:**

- **Konsistensi Data**: Semua komponen aplikasi yang membutuhkan data dari server dapat menggunakan instance yang sama untuk memastikan sesi pengguna tetap valid.
- **Pengelolaan yang Mudah**: Dengan instance tunggal, cookie hanya perlu diatur sekali dan dapat diakses di mana saja tanpa perlu menyimpan cookie secara manual di tiap komponen.

### 4. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.

**1. Input Data di Flutter:**
- Data diinput oleh pengguna melalui form atau komponen lain.
- Data ini dikumpulkan dalam bentuk map atau objek model.

**2. Pengiriman Data ke Server:**
- Flutter mengirimkan data menggunakan library seperti http.
- Request dikirim dalam bentuk JSON ke endpoint API tertentu (misalnya, menggunakan metode POST).

**3. Pemrosesan di Server:**
- Server menerima request dan memvalidasi data.
- Jika valid, server memproses data (misalnya, menyimpan ke database atau melakukan operasi lainnya).
- Response dikembalikan ke Flutter dalam bentuk JSON.

**4. Pengolahan Response di Flutter:**
- Data JSON dari server di-decode menjadi objek model.
- Objek ini kemudian diteruskan ke UI untuk ditampilkan.

**5. Tampilan di UI:**
- Flutter memperbarui tampilan menggunakan widget berdasarkan data yang diterima.

### 5. Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.

**a. Login:**

1. Input Akun: Pengguna memasukkan email/username dan password di Flutter.
2. Kirim Request ke Django: Flutter mengirim request POST ke endpoint login Django, menyertakan data akun dalam body JSON.
3. Proses Autentikasi di Django: Django memverifikasi kredensial dengan memeriksa database. Jika valid, server membuat token atau session cookie.
4. Response ke Flutter: Server mengirim response sukses dengan token/cookie yang disimpan oleh CookieRequest di Flutter.
5. Akses Sumber Daya: Cookie/token digunakan untuk request selanjutnya tanpa perlu login ulang.

**b. Register:**

1. Input Data Pendaftaran: Pengguna mengisi form (misalnya, nama, email, password).
2. Kirim Data ke Django: Flutter mengirim request POST ke endpoint register.
3. Proses di Django: Server memvalidasi dan menyimpan data pengguna baru di database. Jika berhasil, Django dapat otomatis login pengguna atau mengirimkan respons sukses.
4. Respons ke Flutter: Flutter menerima respons dan menampilkan notifikasi sukses atau navigasi ke halaman login.

**c. Logout:**

1. Request Logout: Flutter mengirimkan request logout ke endpoint Django.
2. Hapus Session: Django menghapus session pengguna (jika berbasis cookie) atau menghapus token (jika menggunakan token-based authentication).
3. Respons ke Flutter: Server mengirim respons sukses, dan Flutter menghapus data sesi lokal (misalnya, menghapus token dari memori).

### 6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).

1. Tambahkan aplikasi baru ke proyek Django dan masukkan dependensi `django-cors-headers` ke dalam file `requirements.txt`.
2. Buat fungsi login, register, dan logout di `views.py` dalam aplikasi autentikasi, lalu tambahkan URL routing di file `urls.py` di folder authentication.
3. Buat objek baru bernama `Provider` untuk membagikan instance `CookieRequest` serta semua komponen dalam aplikasi.
4. Siapkan file `login.dart` dan `register.dart`. Modifikasi file `main.dart` agar langsung mengarahkan pengguna ke halaman login saat aplikasi dijalankan.
5. Tambahkan data dari Django dengan membuka endpoint JSON, lalu buat model yang sesuai untuk menangani data JSON tersebut.
6. Buat file `list_productentry.dart` untuk menampilkan produk yang sudah ditambahkan.
7. Integrasikan form Flutter dengan Django dengan membuat method `create_product_flutter` di `main/views.py`. Tambahkan `CookiesRequest` pada file `productentry_form.dart` dan ubah fungsi `onPressed` agar data dari form dapat disimpan.
8. Implementasikan fitur logout.
9. Selesaikan semua masalah terkait impor file yang diperlukan.

</details>