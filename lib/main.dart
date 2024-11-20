import 'package:flutter/material.dart';
import 'package:ice_creamy/screens/login.dart';
import 'package:ice_creamy/screens/menu.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       //MaterialApp adalah widget utama yang mengatur tema, judul, rute, dan halaman awal aplikasi.
//       title: 'Ice Creamy', //Mengatur tema untuk aplikasi ini 
//       theme: ThemeData(
//         // Using primaryColor instead of primarySwatch
//         primaryColor: const Color.fromARGB(255, 126, 212, 173),
//         colorScheme: ColorScheme.fromSwatch(
//           primarySwatch: Colors.teal, // Set another material color
//         ).copyWith(secondary: const Color.fromARGB(255, 4, 71, 30)),
//         useMaterial3: true,
//       ),
//       //home: MyHomePage(),
//     );
//   }
// }
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) {
        CookieRequest request = CookieRequest();
        return request;
      },
      child: MaterialApp(
        title: 'Ice Creamy',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.teal,
          ).copyWith(secondary: const Color.fromARGB(255, 4, 71, 30)),
        ),
        home: const LoginPage()
      ),
    );
  }
}