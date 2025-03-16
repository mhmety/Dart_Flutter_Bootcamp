import 'package:flutter/material.dart';

class KullaniciEtkilesimi extends StatefulWidget {
  const KullaniciEtkilesimi({super.key});

  @override
  State<KullaniciEtkilesimi> createState() => _KullaniciEtkilesimiState();
}

class _KullaniciEtkilesimiState extends State<KullaniciEtkilesimi> {
  var tfControl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Kullanıcı Etkileşimi"),),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                    content: const Text("silmek istiyor musunuz?"),
                    action: SnackBarAction(label: "evet", onPressed: (){
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: const Text("silindi")));
                    }),
                )
                );
            }, child: const Text("Snackbar")),

            ElevatedButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text("silmek istiyor musunuz?",style: TextStyle(color: Colors.red),),
                    backgroundColor: Colors.grey,
                    action: SnackBarAction(label: "evet", onPressed: (){
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: const Text("silindi")));
                    }),
                  )
              );
            }, child: const Text("Snackbar(ÖZEL)")),

            ElevatedButton(onPressed: (){
              showDialog(
                  context: context,
                  builder: (BuildContext context){
                    return AlertDialog(
                      title: const Text("başlık"),
                      content: const Text("içerik"),
                      actions: [
                        TextButton(onPressed: (){
                          Navigator.pop(context);
                        }, child: const Text("iptal")),
                        TextButton(onPressed: (){

                        }, child: const Text("tamam")),
                      ],
                    );
                  }
              );
            }, child: const Text("Alert")),

            ElevatedButton(onPressed: (){
              showDialog(
                  context: context,
                  builder: (BuildContext context){
                    return AlertDialog(
                      title: const Text("başlık"),
                      content: TextField(controller: tfControl, decoration: const InputDecoration(hintText: "veri"),),
                      backgroundColor: Colors.grey,
                      actions: [
                        TextButton(onPressed: (){
                          print("iptal seçildi");
                          Navigator.pop(context);
                        }, child: const Text("iptal",style: TextStyle(color: Colors.black))),
                        TextButton(onPressed: (){
                          print("veri alındı: $tfControl.text");
                          tfControl.text = "";
                          Navigator.pop(context);
                        }, child: const Text("kaydet",style: TextStyle(color: Colors.black),)),
                      ],
                    );
                  }
              );
            }, child: const Text("Alert(ÖZEL)")),
          ],
        ),
      ),
    );
  }
}
