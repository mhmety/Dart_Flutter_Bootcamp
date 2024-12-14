void main(){
  int a = 40;
  int b = 50;

  int x = 80;
  int y = 90;

  print("a==b: ${a==b}"); //eşittir
  print("a!=b: ${a!=b}"); //eşit değildir
  print("a<b: ${a<b}"); //küçüktür
  print("a<=b: ${a<=b}"); //küçük eşittir
  print("a>b: ${a>b}"); //büyüktür
  print("a>=b: ${a>=b}"); //büyük eşittir

  print("a>b || x>y: ${a>b || x>y}");//OR(VEYA) : false - false : false olur, diğer durumlarda true olur.
  print("a>b && x>y: ${a>b && x>y}");//AND(VE) : true - true : true olur, diğer durumlar false olur.

}