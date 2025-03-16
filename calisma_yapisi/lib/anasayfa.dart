import 'package:calisma_yapisi/kisiler.dart';
import 'package:calisma_yapisi/oyun_ekrani.dart';
import 'package:flutter/material.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  int sayac = 0;
  bool kontrol = false;

  Future<int> toplama(int sayi1, int sayi2) async {
    int toplam = sayi1 + sayi2;
    return toplam;
  }

  @override
  Widget build(BuildContext context) {
    print("Build() çalıştı");
    return Scaffold(
      appBar: AppBar(title: const Text("Anasayfa"),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Sonuç: $sayac"),
            ElevatedButton(onPressed: (){
              setState(() {
                sayac = sayac + 1;
              });
            }, child: const Text("tıkla")),
            ElevatedButton(onPressed: (){
              var kisi = Kisiler(ad: "Mehmet", yas: 21, boy: 1.79, bekar: true);
              Navigator.push(context, MaterialPageRoute(builder: (context) => OyunEkrani(kisi: kisi)))
                  .then((value) {
                    print("Anasayfa dönüldü");
              });
            }, child: const Text("Başla")),
            Visibility(visible: kontrol, child:const Text("merhaba")),
            Text(kontrol ? "merhaba" : "güle güle", style: TextStyle(color: kontrol ? Colors.blue : Colors.blue),),
            ElevatedButton(onPressed: (){
              setState(() { kontrol = true;});
            }, child: const Text("Aç")),
            ElevatedButton(onPressed: (){
              setState(() {kontrol = false;});
            }, child: const Text("Kapa")),
            FutureBuilder<int>(
              future: toplama(5, 6),
              builder: (context,snapshot){
                if(snapshot.hasError){
                  return const Text("hata oluştu");
                }
                if(snapshot.hasData){
                  return Text("sonuç: ${snapshot.data}");
                }else{
                  return const Text("sonuç yok");
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

