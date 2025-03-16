import 'package:calisma_yapisi/%C3%B6dev4/sayfaiki.dart';
import 'package:flutter/material.dart';

class Sayfabir extends StatefulWidget {
  const Sayfabir({super.key});

  @override
  State<Sayfabir> createState() => _SayfabirState();
}

class _SayfabirState extends State<Sayfabir> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sayfa 1"),),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Sayfaiki()));
            }, child: Text("sayfa2")),
          ],
        ),
      ),
    );
  }
}
