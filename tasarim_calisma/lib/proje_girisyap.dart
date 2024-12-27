import 'package:flutter/material.dart';
import 'package:tasarim_calisma/proje_anaekran.dart';
import 'dart:ui';// Blur efekti için
import 'package:tasarim_calisma/proje_renkler.dart';
import 'package:tasarim_calisma/proje_sifremiunuttum.dart';


class ProjeGiris extends StatefulWidget {
  const ProjeGiris({super.key});

  @override
  State<ProjeGiris> createState() => _ProjeGirisState();
}

class _ProjeGirisState extends State<ProjeGiris> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(8.8),
          child: Text(
            "TarımBil",
            style: TextStyle(
              fontFamily: "pacifico",
              color: yazi_renk1,
              fontSize: 30,
            ),
          ),
        ),
        backgroundColor: ana_renk,
        centerTitle: true,
      ),
      body: Stack(
        children: [
          // Arka plan resmi
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("resimler/Photo & Art Print Crop, Zoran Zeremski.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 6.0, sigmaY: 6.0),
            child: Container(
              color: Colors.black.withOpacity(0),
            ),
          ),
          Center(
            child: Container(
              width: 500,
              height: 300,
              decoration: BoxDecoration(
                color: ana_renk.withOpacity(0.5),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      "Hoşgeldiniz.",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: yazi_renk2,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'E-posta Giriniz',
                      hintStyle: TextStyle(color: yazi_renk2,fontSize: 18),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Şifre Giriniz',
                      hintStyle: TextStyle(color: yazi_renk2,fontSize: 18),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TarimBilHomePage(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ana_renk,
                          padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
                        ),
                        child: const Text(
                          "Giriş Yap",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SifremiUnuttum(),
                            ),
                          );
                        },
                        child: const Text(
                          "Şifremi Unuttum",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.blue,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}