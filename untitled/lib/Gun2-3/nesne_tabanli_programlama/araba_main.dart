import 'package:untitled/Gun2-3/nesne_tabanli_programlama/araba.dart';

void main(){
  //nesne oluşturma
  var bmw = Araba(renk: "mavi", hiz: 0, calisiyormu: false);
  bmw.bilgiAl();
  bmw.calistir();
  bmw.bilgiAl();
  bmw.hizlan(50);
  bmw.bilgiAl();
  //özellikleri belirginleştirme
  var togg = Araba(renk: "beyaz", hiz: 120, calisiyormu: true);
  togg.bilgiAl();
  togg.yavasla(120);
  togg.bilgiAl();
  togg.durdur();
  togg.bilgiAl();
  //deger atama
  bmw.renk="kirmizi";
  bmw.hiz=100;
  bmw.calisiyormu=true;
  bmw.bilgiAl();
}