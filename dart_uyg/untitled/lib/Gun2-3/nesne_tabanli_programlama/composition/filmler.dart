import 'package:untitled/Gun2-3/nesne_tabanli_programlama/composition/kategoriler.dart';
import 'package:untitled/Gun2-3/nesne_tabanli_programlama/composition/yonetmenler.dart';

class Filmler{
  int film_id;
  String film_ad;
  int film_yil;
  Kategoriler kategori;
  Yonetmenler yonetmen;

  Filmler(
      {required this.film_id,
      required this.film_ad,
      required this.film_yil,
      required this.kategori,
      required this.yonetmen});
}