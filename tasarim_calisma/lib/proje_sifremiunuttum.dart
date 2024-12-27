import 'package:flutter/material.dart';
import 'dart:ui'; // Blur efekti için
import 'package:tasarim_calisma/proje_renkler.dart';

class SifremiUnuttum extends StatefulWidget {
  const SifremiUnuttum({super.key});

  @override
  State<SifremiUnuttum> createState() => _SifremiUnuttumState();
}

class _SifremiUnuttumState extends State<SifremiUnuttum> {
  final TextEditingController _emailController = TextEditingController();

  void _sendVerificationCode() {
    final email = _emailController.text;
    if (email.isNotEmpty) {
      print('Doğrulama kodu gönderildi: $email');
      // Kod gönderme işlemi burada yapılır
    } else {
      print('E-posta adresi boş olamaz!');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(8.8),
          child: Text(
            "Şifremi Unuttum",
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
              height: 250,
              decoration: BoxDecoration(
                color: ana_renk.withOpacity(0.5),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Text(
                      "E-posta Adresinizi Giriniz",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: yazi_renk2,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        hintText: 'E-posta Giriniz',
                        hintStyle: TextStyle(color: yazi_renk2, fontSize: 18),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.7),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _sendVerificationCode,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ana_renk,
                      padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 15.0),
                    ),
                    child: const Text(
                      "Gönder",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
