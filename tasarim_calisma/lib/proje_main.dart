import 'package:flutter/material.dart';
import 'package:tasarim_calisma/proje_girisEkran.dart';
import 'package:tasarim_calisma/proje_girisyap.dart';
import 'package:tasarim_calisma/proje_kayitol.dart'; // Kayıt ekranı için import

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => const ProjeGirisEkran(),
        '/register': (context) => const ProjeGiris(),
      },
    );
  }
}
