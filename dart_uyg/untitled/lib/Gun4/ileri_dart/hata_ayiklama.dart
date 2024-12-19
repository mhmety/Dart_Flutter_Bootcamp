void main(){
  //1 compile error
  String x = "hello";
  //x=100;

  //2 runtime error
  var liste = <String>[];
  liste.add("duygu");
  liste.add("mehmet");

  try{
    String isim = liste[3];
    print("isim : $isim");
  }catch(e){
    print("liste boyutu aşıldı");
  }
}