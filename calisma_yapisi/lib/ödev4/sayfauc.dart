import 'package:calisma_yapisi/%C3%B6dev4/sayfadort.dart';
import 'package:flutter/material.dart';

class Sayfauc extends StatefulWidget {
  const Sayfauc({super.key});

  @override
  State<Sayfauc> createState() => _SayfaucState();
}

class _SayfaucState extends State<Sayfauc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sayfa 3"),),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Sayfadort()));
            }, child: Text("sayfa4")),
          ],
        ),
      ),
    );
  }
}
