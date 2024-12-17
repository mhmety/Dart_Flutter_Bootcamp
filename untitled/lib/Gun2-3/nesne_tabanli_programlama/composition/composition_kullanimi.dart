import 'package:untitled/Gun2-3/nesne_tabanli_programlama/composition/filmler.dart';
import 'package:untitled/Gun2-3/nesne_tabanli_programlama/composition/kategoriler.dart';
import 'package:untitled/Gun2-3/nesne_tabanli_programlama/composition/yonetmenler.dart';

void main(){

  var k1 = Kategoriler(kategori_id: 1, kategori_ad: "drama");
  var k2 = Kategoriler(kategori_id: 2, kategori_ad: "aksiyon");

  var y1 = Yonetmenler(yonetmen_id: 1, yonetmen_ad: "quentin tarantino");
  var y2 = Yonetmenler(yonetmen_id: 2, yonetmen_ad: "christopher nolan");
  
  var f1 = Filmler(film_id: 1, film_ad: "django", film_yil: 2013, kategori: k2, yonetmen: y2);

  print("film id       : ${f1.film_id}");
  print("film adı      : ${f1.film_ad}");
  print("film yil      : ${f1.film_yil}");
  print("film kategori : ${f1.kategori.kategori_ad}");
  print("film yonetmen : ${f1.yonetmen.yonetmen_ad}");

}