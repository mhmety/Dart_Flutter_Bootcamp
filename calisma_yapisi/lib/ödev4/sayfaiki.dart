import 'package:calisma_yapisi/%C3%B6dev4/sayfadort.dart';
import 'package:flutter/material.dart';

class Sayfaiki extends StatefulWidget {
  const Sayfaiki({super.key});

  @override
  State<Sayfaiki> createState() => _SayfaikiState();
}

class _SayfaikiState extends State<Sayfaiki> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sayfa 2"),),
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
