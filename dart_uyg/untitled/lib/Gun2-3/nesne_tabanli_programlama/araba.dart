class Araba{
  String renk;
  int hiz;
  bool calisiyormu;
  //constructor method
  Araba({ required this.renk,required this.hiz,required this.calisiyormu});

  //side effect: yan etki
  void calistir(){
    calisiyormu=true;
    hiz=5;
  }
  void durdur(){
    calisiyormu=false;
    hiz=0;
  }

  void hizlan(int kacKm){
    hiz+=kacKm;
  }
  void yavasla(int kacKm){
    hiz-=kacKm;
  }

  void bilgiAl(){
  print("------------------------------");
  print("renk         : ${renk} ");
  print("hiz          : ${hiz} ");
  print("bçalişiyor mu: ${calisiyormu}");
  }
}