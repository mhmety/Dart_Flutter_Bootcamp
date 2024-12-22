import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: LoginPage(),
  ));
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    debugShowCheckedModeBanner: false;

    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 100.0,
            width: double.infinity,
            color: const Color(0xFF4C1C24),
            child: const Padding(
              padding: EdgeInsets.only(top: 50.0),
              child: Center(
                child: Text(
                  "Login Screen",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 16.0, top: 60.0),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Selam, \nHoşgeldin",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'Kullanıcı Adı Giriniz',
                    ),
                  ),
                  const SizedBox(height: 20),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Şifre Giriniz',
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          print("Giriş Yapıldı!");
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF4C1C24),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 50.0,
                            vertical: 15.0,
                          ),
                        ),
                        child: const Text(
                          "Giriş Yap",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          print("Şifremi Unuttum tıklandı!");
                        },
                        child: const Text(
                          "Şifremi Unuttum",
                          style: TextStyle(fontSize: 18, color: Colors.blue),
                        ),
                      ),
                    ],
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
