import 'package:untitled/Gun2-3/nesne_tabanli_programlama/Asinifi.dart';

void main(){

  var a = Asinifi();

  //Standart kullanım
  //print(a.degisken);
  //a.metod();

  //Sanal nesne - isimsiz nesne
  //print(Asinifi().degisken); //1.nesne
  //Asinigi().metod(); //2.nesne

  //static kullanım
  print(Asinifi.degisken);
  Asinifi.metod();
}