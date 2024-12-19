void main(){
  //tanımla
  var plakalar = [16,23,6];
  var meyveler = <String>[];
  //veri ekleme
  meyveler.add("muz");
  meyveler.add("kiraz");
  meyveler.add("alma");
  meyveler.add("hurma");
  print(meyveler);

  print("----------------");

  //güncelleme
  meyveler[1] = "yeni kiraz";
  print(meyveler);

  print("----------------");
  //insert
  meyveler.insert(1,"portakal");
  print(meyveler);

  print("----------------");
  //veri okuma
  String meyve = meyveler[2];
  print(meyve);

  print("----------------");

  print("boyut: ${meyveler.length}");
  print("boş kontrol: ${meyveler.isEmpty}");

  print("----------------");
  //for each
  for(var meyve in meyveler){
    print("sonuç: $meyve");
  }

  print("----------------");
  //0- 1- 2- 3
  for(var i=0;i<meyveler.length;i++){
    print("$i,-> ${meyveler.reversed.toList()}");

  }

  print("----------------");
  var liste = meyveler.reversed.toList();
  print(liste);

  meyveler.sort();
  print(meyveler);

  meyveler.removeAt(1);
  print(meyveler);

  meyveler.clear();
  print(meyveler);
}