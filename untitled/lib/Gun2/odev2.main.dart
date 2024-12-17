import 'package:untitled/Gun2/odev2.dart';

void main(){

  //km mile dönüştüren method
  var x = Fonksiyonlar();
  double mesafe = x.kmToMile(10);
  print(mesafe);

  print("-----");

  //dikdörtgenin alanı
  int alan = x.dikdortgenAlan(10, 5);
  print(alan);

  print("-----");

  //faktoriyel hesabı yapan
  int faktoriyel = x.faktoriyel(5);
  print(faktoriyel);

  print("-----");

  //e harfini sayan
  int kelime = x.eHarfiniSay("mehmet eee");
  print(kelime);

  print("-----");

  //kenar sayısına göre iç açı hesaplayan
  int cokgen = x.icAciHesapla(2);

  print(cokgen);

  print("-----");
  int cokgen2 = x.icAciHesapla(4); //90
  print(cokgen2);

  print("-----");

  //gun sayisine gore maas hesabi
  int maas = x.maasHesapla(24);
  print(maas);

  print("-----");

  //otopark ücretlendirmesi
  int ucret = x.otoparkUcretiniHesapla(2);
  print(ucret);
}