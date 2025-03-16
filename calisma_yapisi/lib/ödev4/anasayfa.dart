import 'package:calisma_yapisi/%C3%B6dev4/sayfabir.dart';
import 'package:calisma_yapisi/%C3%B6dev4/sayfauc.dart';
import 'package:flutter/material.dart';

class OdevAnasayfa extends StatefulWidget {
  const OdevAnasayfa({super.key});

  @override
  State<OdevAnasayfa> createState() => _OdevAnasayfaState();
}

class _OdevAnasayfaState extends State<OdevAnasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Anasayfa"),),
       body: Center(
         child: Column(
           children: [
             ElevatedButton(onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context) => const Sayfabir()));
             }, child: Text("sayfa1")),
             ElevatedButton(onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context) => const Sayfauc()));
             }, child: Text("sayfa3")),
           ],
         ),
       ),
    );
  }
}
