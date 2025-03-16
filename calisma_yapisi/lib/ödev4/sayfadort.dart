import 'package:flutter/material.dart';

class Sayfadort extends StatefulWidget {
  const Sayfadort({super.key});

  @override
  State<Sayfadort> createState() => _SayfadortState();
}

class _SayfadortState extends State<Sayfadort> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sayfa 4"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){
              Navigator.of(context).popUntil((route) => route.isFirst);
            }, child: const Text("Anasayfaya Geri Dön"))
          ],
        ),
      ),
    );
  }
}
