import 'package:untitled/nesne_tabanli_programlama/konserve_boyut.dart';

void main(){
  //enumeration, enum
  ucretHesapla(KonserveBoyut.buyuk, 13);
}

void ucretHesapla(KonserveBoyut boyut,int adet){
  switch(boyut){
    case KonserveBoyut.kucuk: {
      print("toplam maliyet: ${adet * 8} tl");
    }
    break;
    case KonserveBoyut.orta: {
      print("toplam maliyet: ${adet * 16} tl");
    }
    break;
    case KonserveBoyut.buyuk: {
      print("toplam maliyet: ${adet * 32} tl");
    }
    break;
  }
}