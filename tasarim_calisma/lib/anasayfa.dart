import 'package:flutter/material.dart';
import 'package:tasarim_calisma/renkler.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({super.key});

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}
//left -start -leading
//right- end -trailing
class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("pizza",style:TextStyle(color: yaziRenk1, fontFamily: "Pacifico",fontSize: 26),),
        backgroundColor: anaRenk,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:16),
            child: Text("Beef Cheese", style: TextStyle(fontSize: 36, color:anaRenk,fontWeight: FontWeight.bold,)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16),
            child: SizedBox(
                width: 250,
                height: 250,
                child: Image.asset("resimler/top-view-delicious-pizza_23-2151868906.avif")),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Row( mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Chip(icerik: "Cheese"),
                Chip(icerik: "Sausage"),
                Chip(icerik: "Olive"),
                Chip(icerik: "Pepper"),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("20 min",style: TextStyle(color: yaziRenk2,fontSize: 22,fontWeight: FontWeight.bold),),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Delivery",style: TextStyle(color: anaRenk,fontSize: 22,fontWeight: FontWeight.bold),),
                ),
                Text("Meet lover, get ready to meet your pizza !",style: TextStyle(color: yaziRenk2,fontSize: 22,),textAlign: TextAlign.center,),
              ],
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(" \$ 5.98",style: TextStyle(color: anaRenk,fontSize: 44,fontWeight: FontWeight.bold),),
              SizedBox(
                width: 200,
                height: 50,
                child: TextButton(onPressed: (){},
                  child: Text("add to cart", style: TextStyle(color:yaziRenk1,fontSize: 20),),
                  style: TextButton.styleFrom(
                    backgroundColor: anaRenk,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(3))),
                  ),
                ),
              ),
            ],
          ),
        ],
      )
    );
  }
}

class Chip extends StatefulWidget{
  String icerik;
  Chip({required this.icerik});

  @override
  Widget build(BuildContext context){
    return TextButton(onPressed: (){},
      child: Text(icerik, style: TextStyle(color:yaziRenk1),),
      style: TextButton.styleFrom(backgroundColor: anaRenk),
    );
  }
}