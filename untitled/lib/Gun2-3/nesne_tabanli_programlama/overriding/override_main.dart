import 'package:untitled/Gun2-3/nesne_tabanli_programlama/overriding/hayvan.dart';
import 'package:untitled/Gun2-3/nesne_tabanli_programlama/overriding/kedi.dart';
import 'package:untitled/Gun2-3/nesne_tabanli_programlama/overriding/kopek.dart';
import 'package:untitled/Gun2-3/nesne_tabanli_programlama/overriding/memeli.dart';

void main(){
  var hayvan = Hayvan();
  var memeli = Memeli();
  var kedi = Kedi();
  var kopek = Kopek();

  hayvan.sesCikar();//kalıtım yok, kendi metoduna erişti
  memeli.sesCikar();//kalıtım var, üst sınıfın metoduna erişti
  kedi.sesCikar();//kalıtım var, kendi metoduna erişti
  kopek.sesCikar();//kalıtım var, kendi metoduna erişti

}