import 'package:untitled/Gun2-3/nesne_tabanli_programlama/fonksiyonlar.dart';

void main(){
  var f = Fonksiyon();
  f.selamla1();

  String gelenSonuc = f.selamla2();
  print("gelen sonuc: $gelenSonuc");

  f.selamla3("mehmet");

  int gelenToplam= f.toplama(10, 11);
  print(gelenToplam);


}