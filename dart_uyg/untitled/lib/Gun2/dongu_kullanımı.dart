void main(){
  //1,2,3
  for (var i=1;i<4;i++){
    print("döngü1 : $i");
  }

  //10 ile 20 5er artsın
  for (var x=10;x<21;x+=5){
    print("döngü2 : $x");
  }

  for (var z=20;z>9;z-=5){
    print("döngü3 : $z");
  }

  var sayac = 1;
  while(sayac < 4){
    print("döngü4 : $sayac");
    sayac++;
  }

  for(var c=1;c<6;c++){
    if(c==3){
      break;
    }
    print("döngü5 : $c");
  }

  for(var v=1;v<6;v++){
    if(v==3){
      continue;
    }
    print("döngü6 : $v");
  }

}