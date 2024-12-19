class Fonksiyonlar{
  //km mile dönüştüren method
  double kmToMile(int km){
    double mile = km * 0.621;
    return mile;
  }

  //dikdörtgenin alanını hesaplayan
  int dikdortgenAlan(int genislik,int yukseklik){
    int alan = genislik * yukseklik;
    return alan;
  }

  //parametre olarak girilen değerin faktöriyelini hesaplayan fonksiyon
  int faktoriyel(int sayi) {
    int sonuc = 1;
    for (int i = sayi; i > 0; i--) {
      sonuc *= i;
    }
    return sonuc;
  }

  //parametre olarak girilen e harfini say
  int eHarfiniSay(String kelime) {
    return kelime.split('').where((karakter) => karakter == 'e').length;
  }

  //kenar sayısına göre iç açıları bulan
  int icAciHesapla(int kenarSayisi){
    if(kenarSayisi < 3){
      print("en az 3 kenar olmalıdır");

    }
    double sonuc = ((kenarSayisi - 2) * 180) / kenarSayisi;
    return sonuc.toInt();
  }

  //gun sayisina gore maas hesabı
  int maasHesapla(int gunSayisi) {
    int toplamSaat = gunSayisi * 8;
    int mesaiSaatleri = toplamSaat > 150 ? toplamSaat - 150 : 0;
    int normalSaatler = toplamSaat - mesaiSaatleri;
    return (normalSaatler * 40) + (mesaiSaatleri * 80);
  }

  //otopark ücretlendirmesi
  int otoparkUcretiniHesapla(int saat) {
    if (saat <= 0) {
      return 0;
    } else if (saat == 1) {
      return 50;
    } else {
      return 50 + (saat - 1) * 10;
    }
  }

}