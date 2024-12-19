import 'dart:collection';

void main(){
  //tanımlama
  var plakalar = HashSet.from([15,41,47]);
  var meyveler = HashSet<String>();

  //değer atama
  meyveler.add("kiraz");
  meyveler.add("muz");
  meyveler.add("elma");
  print(meyveler);

  meyveler.add("amasya elması");
  print(meyveler);

  String meyve = meyveler.elementAt(2);
  print(meyve);

  print("boyut: ${meyveler.length}");
  print("boş kontrol: ${meyveler.isEmpty}");

  for(var meyve in meyveler){
    print("sonuç : ${meyve}");
  }

  for(var i=0;i<meyveler.length;i++){
    print("$i. = ${meyveler.elementAt(i)}");
  }

  meyveler.remove("elme");
  print(meyveler);

  meyveler.clear();
  print(meyveler);
}