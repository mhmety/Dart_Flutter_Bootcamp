class Fonksiyon{
  //void : geri dönüş değeri olmayan
  void selamla1(){
    var sonuc="selamlar efenim";
    print(sonuc);
  }
  //return : geri deönüş değeri olan
  String selamla2(){
    String sonuc = "merhaba efenim";
    return sonuc;
  }
  //parametre : dışardan değer alma
  void selamla3(String isim){
    String sonuc = "merhaba $isim";
    print(sonuc);
  }

  int toplama(int sayi1, int sayi2){
    int toplam = sayi1+sayi2;
    return toplam;
  }

  //Dart dilinde overloading yer almıyor.
  //overloading : sınıf içerisinde bir methodun adını tekrar kullanmak
}