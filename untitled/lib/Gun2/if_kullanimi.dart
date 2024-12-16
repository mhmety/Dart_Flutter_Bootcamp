void main(){
  String isim = "mehmet";
  int yas = 20;

  if(yas<=18){
    print("reşit değilsiniz");
  }else{
    print("reşitsiniz");
  }

  if(isim == "mehmet"){
    print("merhaba mehmet");
  }else if(isim == "ahmet"){
    print("bilinmeyen kişi");
  }else{
    print("bilinmeyen kişi");
  }

  String ka = "admin";
  int s = 123456;

  if(ka=="admin" && s==123456){
    print("giriş başarılı");
  }else{
    print("giriş başarısız");
  }

  int sayi =8;

  if(sayi ==9 || sayi == 10){
    print("sayi 9 veya 10'dur");
  }else{
    print("sayi 9 veya 10 değildir");
  }


}