import 'package:flutter/material.dart';
import 'package:ice_creamy/screens/list_productentry.dart';
import 'package:ice_creamy/screens/login.dart';
import 'package:ice_creamy/screens/productentry_form.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

class ItemCard extends StatelessWidget {
  // Menampilkan kartu dengan ikon dan nama.

  final ItemHomepage item;

  const ItemCard(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    Color buttonColor;
    if (item.name == "Lihat Daftar Produk") {
      buttonColor = const Color.fromARGB(255, 215, 108, 130); 
    } else if (item.name == "Tambah Produk") {
      buttonColor = const Color.fromARGB(255, 176, 48, 82); 
    } else if (item.name == "Logout") {
      buttonColor = const Color.fromARGB(255, 61, 3, 1);
    } else {
      buttonColor = Theme.of(context).colorScheme.secondary;
    }
    
    return Material(
      // Menentukan warna latar belakang dari tema aplikasi.
      color: Theme.of(context).colorScheme.secondary,
      // Membuat sudut kartu melengkung.
      borderRadius: BorderRadius.circular(12),

      child: InkWell(
        // Aksi ketika kartu ditekan.
        onTap: () async {
          // Menampilkan pesan SnackBar saat kartu ditekan.
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}!")));
            if (item.name == "Tambah Product") {
            //Gunakan Navigator.push untuk melakukan navigasi ke MaterialPageRoute yang mencakup TrackerFormPage.
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                    const ProductEntryFormPage(),
              )
            );
          }
            else if (item.name == "Lihat Product") {
            //Gunakan Navigator.push untuk melakukan navigasi ke MaterialPageRoute yang mencakup TrackerFormPage.
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                    const ProductEntryPage(),
              )
            );
          }
            else if (item.name == "Logout") {
                final response = await request.logout(
                    // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
                    "http://127.0.0.1:8000/auth/logout/");
                String message = response["message"];
                if (context.mounted) {
                    if (response['status']) {
                        String uname = response["username"];
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text("$message Sampai jumpa, $uname."),
                        ));
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => const LoginPage()),
                        );
                    } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                                content: Text(message),
                            ),
                        );
                    }
                }
            }
        },
        // Container untuk menyimpan Icon dan Text
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              // Menyusun ikon dan teks di tengah kartu.
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


class ItemHomepage {
  final String name;
  final IconData icon;

  ItemHomepage(this.name, this.icon);
}