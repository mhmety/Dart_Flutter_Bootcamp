void main(){
//sayısaldan sayısala

int i = 10;
double j = 10.78;

int sonuc1 = j.toInt();
double sonuc2 = i.toDouble();
print(sonuc1);
print(sonuc2);

//sayısaldan metine dönüşüm
String sonuc3 = i.toString();
String sonuc4 = j.toString();
print(sonuc3);
print(sonuc4);

//metinden sayısala dönüşüm

String yazi1 = "25.56";
String yazi2 = "56";

int sonuc5 =int.parse(yazi1);
double sonuc6 = double.parse(yazi2);
print(sonuc5);
print(sonuc6);



}