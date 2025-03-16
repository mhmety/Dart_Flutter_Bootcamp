import 'package:calisma_yapisi/bottom_navbar_kullanimi/sayfa_bir.dart';
import 'package:calisma_yapisi/bottom_navbar_kullanimi/sayfa_iki.dart';
import 'package:calisma_yapisi/bottom_navbar_kullanimi/sayfa_uc.dart';
import 'package:flutter/material.dart';

class BottomNavigationSayfa extends StatefulWidget {
  const BottomNavigationSayfa({super.key});

  @override
  State<BottomNavigationSayfa> createState() => _BottomNavigationSayfaState();
}

class _BottomNavigationSayfaState extends State<BottomNavigationSayfa> {
  int secilenindeks = 0 ;
  var sayfalar = [const SayfaBir(), const SayfaIki(), const SayfaUc() ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("bottom navigation"),backgroundColor: Colors.blueGrey,),
      body: sayfalar[secilenindeks],
      bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.looks_one_outlined),label: "bir"),
            BottomNavigationBarItem(icon: Icon(Icons.looks_two_outlined),label: "iki"),
            BottomNavigationBarItem(icon: Icon(Icons.looks_3_outlined),label: "üç"),
          ],
        currentIndex: secilenindeks,
        backgroundColor: Colors.blueGrey,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (indeks){
            setState(() {
              secilenindeks = indeks;
            });
        },
      ),
    );
  }
}
