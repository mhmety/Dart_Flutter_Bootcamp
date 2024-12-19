import 'dart:collection';

void main(){
  //tanımlama
  var sayilar = {"bir":1,"iki":2};
  var iller = HashMap<int,String>();

  //değer atama
  iller[34] ="istanbul";
  iller[16]="bursa";
  iller[71]="kırıkkale";
  print(iller);

  //gümncelleme
  iller[16]= "yeni bursa";
  print(iller);

  String il = iller[34]!;
  print(il);

  print("boyut: ${iller.length}");
  print("boş kontrol: ${iller.isEmpty}");

  var anahtarlar = iller.keys;
  for(var a in anahtarlar){
    print("$a. : ${iller[a]}");
  }

  iller.remove(16);
  print(iller);
}