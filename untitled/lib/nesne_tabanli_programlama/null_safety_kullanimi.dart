void main(){
  //null safety - Nullable - Optional(Swift)
  //null - nil(Swift) - NoN

  //tanımlama
  String? mesaj = null;

  //mesaj =  "merhaba";

  //yöntem1
  print("yöntem1 : ${mesaj?.toUpperCase()}");

  //yöntem2
  //print("yöntem2 : ${mesaj!.toUpperCase()}");

  //yöntem3
  if(mesaj != null){
    print("yöntem3 : ${mesaj.toUpperCase()}");
  }else{
    print("mesaj null'dur");
  }
}