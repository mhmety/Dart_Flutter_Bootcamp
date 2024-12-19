import 'package:untitled/Gun4/collections/ogrenciler.dart';

void main(){
  var o1=Ogrenciler(no: 300, ad: "mehmet", sinif: "9a");
  var o2 =Ogrenciler(no: 200, ad: "efe", sinif: "9c");
  var o3 = Ogrenciler(no: 100, ad: "yigit", sinif: "9d");

  var ogrencilerListesi= <Ogrenciler>[];
  ogrencilerListesi.add(o1);
  ogrencilerListesi.add(o3);
  ogrencilerListesi.add(o2);

  for(var o in ogrencilerListesi){
    print("no: ${o.no} ,ad: ${o.ad},sınıf: ${o.sinif}");
  }

  //sorting
  print("sayısal: küçükten büyüğe");
  Comparator<Ogrenciler> s1 = (x,y) => x.no.compareTo(y.no);
  ogrencilerListesi.sort(s1);
  for(var o in ogrencilerListesi){
    print("no: ${o.no} ,ad: ${o.ad},sınıf: ${o.sinif}");
  }

  print("sayısal: büyükten küçüğe");
  Comparator<Ogrenciler> s2 = (x,y) => y.no.compareTo(x.no);
  ogrencilerListesi.sort(s1);
  for(var o in ogrencilerListesi){
    print("no: ${o.no} ,ad: ${o.ad},sınıf: ${o.sinif}");
  }

  print("metinsel: küçükten büyüğe");
  Comparator<Ogrenciler> s3 = (x,y) => x.ad.compareTo(y.ad);
  ogrencilerListesi.sort(s3);
  for(var o in ogrencilerListesi){
    print("no: ${o.no} ,ad: ${o.ad},sınıf: ${o.sinif}");
  }

  //filtreleme
  print("filtreleme1");
  Iterable<Ogrenciler> f1 = ogrencilerListesi.where((ogrenciNesnesi) {
    return ogrenciNesnesi.no > 100;
  });

  var liste1 = f1.toList();
  for(var o in liste1){
    print("no: ${o.no} ,ad: ${o.ad},sınıf: ${o.sinif}");
  }

  print("filtreleme2");
  Iterable<Ogrenciler> f2 = ogrencilerListesi.where((ogrenciNesnesi) {
    return ogrenciNesnesi.ad.contains("e");
  });

  var liste2 = f1.toList();
  for(var o in liste2){
    print("no: ${o.no} ,ad: ${o.ad},sınıf: ${o.sinif}");
  }



}