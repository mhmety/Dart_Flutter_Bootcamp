import 'package:untitled/Gun2-3/nesne_tabanli_programlama/inheritence/ev.dart';
import 'package:untitled/Gun2-3/nesne_tabanli_programlama/inheritence/saray.dart';
import 'package:untitled/Gun2-3/nesne_tabanli_programlama/inheritence/villa.dart';

void main(){

  var topkapiSaray = Saray(kuleSayisi: 10, pencereSayisi: 100);
  print(topkapiSaray.kuleSayisi);
  print(topkapiSaray.pencereSayisi);

  var bogazVilla = Villa(garajVarmi: true, pencereSayisi: 20);
  print(bogazVilla.garajVarmi);
  print(bogazVilla.pencereSayisi);

  //tip kontrol
  if(topkapiSaray is Saray){
    print("saraydır");
  }else{
    print("saray değildir");
  }

  if(Ev is Villa){
    print("villadir");
  }else{
    print("hayır değildir");
  }

  //Downcasting
  var ev = Ev(pencereSayisi: 10);
  var saray = ev as Saray;

  //Upcasting
  var s = Saray(kuleSayisi: 5, pencereSayisi: 55);
  Ev e = s;

}