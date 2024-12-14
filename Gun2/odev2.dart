void main(){
  // 1. Kilometreyi mile dönüştüren metot
num convertKmToMiles(num km) {
  return km * 0.621;
}

// 2. Dikdörtgenin alanını hesaplayan metot
num calculateRectangleArea(num length, num width) {
  return length * width;
}

// 3. Sayının faktoriyelini hesaplayan metot
int calculateFactorial(int number) {
  if (number <= 1) return 1;
  return number * calculateFactorial(number - 1);
}

// 4. Kelime içinde kaç adet 'e' harfi olduğunu bulan metot
int countECharacters(String word) {
  return word.split('').where((char) => char == 'e').length;
}

// 5. Kenar sayısına göre her bir iç açıyı hesaplayan metot
num calculatePolygonInteriorAngle(num sides) {
  if (sides < 3) {
    throw ArgumentError("Bir çokgenin en az 3 kenarı olmalıdır.");
  }
  return ((sides - 2) * 180) / sides;
}

// 6. Gün sayısına göre maaş hesaplayan metot
num calculateSalary(int daysWorked) {
  int totalHours = daysWorked * 8;
  int overtimeHours = totalHours > 150 ? totalHours - 150 : 0;
  int regularHours = totalHours - overtimeHours;
  
  return (regularHours * 40) + (overtimeHours * 80);
}

// 7. Otopark süresine göre ücret hesaplayan metot
num calculateParkingFee(int hours) {
  if (hours <= 0) {
    return 0;
  } else if (hours == 1) {
    return 50;
  } else {
    return 50 + (hours - 1) * 10;
  }
}


  // Örnek kullanımlar
  print("Kilometreyi Mile çevir: ${convertKmToMiles(10)} mile");
  print("Dikdörtgenin Alanı: ${calculateRectangleArea(5, 4)}");
  print("5 Faktöriyel: ${calculateFactorial(5)}");
  print("Kelime içinde 'e' harfi sayısı: ${countECharacters("merhaba")}");
  print("5 Kenarlı çokgenin iç açısı: ${calculatePolygonInteriorAngle(5)} derece");
  print("Çalışılan gün sayısına göre maaş: ${calculateSalary(20)} ₺");
  print("Otopark ücreti (3 saat): ${calculateParkingFee(3)} ₺");


}