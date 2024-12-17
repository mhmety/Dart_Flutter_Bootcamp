import 'package:untitled/Gun2-3/nesne_tabanli_programlama/interface/my_interface.dart';

class ClassA implements MyInterface{
  @override
  int degisken= 10;

  @override
  void metod1() {
    print("metod1 çalıştı");
  }

  @override
  String metod2() {
    return"metod2 çalıştı";
  }

}