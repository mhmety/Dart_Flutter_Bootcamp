  Future<void> main() async{
  print("verinin alınması bekleniyor...");
  var veri = await veriAl();
  print("alınan veri : $veri");
  }

  Future<String> veriAl() async{
    for(var i=1;i<6;i++) {
      Future.delayed(
          Duration(seconds: i), () => print("veri miktarı : %${i * 20}"));
    }
    return Future.delayed(Duration(seconds:5),() => "merhaba");

  }