void main(List<String> args) {
  print("program basladı");

try {
  int sayi = 100 ~/ int.parse("10"); /*int.parse ifadeyi int'a çevirmeye yarar.*/
  print(sayi);  
/* ignore: deprecated_member_use Dart'ta bir sınıf veya üyenin kullanımının artık önerilmediğini belirtmek için kullanılır. Bu, sınıf veya üye artık desteklenmediğinde veya daha iyi bir alternatif mevcut olduğunda yapılır. */
// ignore: deprecated_member_use
} on IntegerDivisionByZeroException {
  print("Bölen sıfır olamaz");
} on FormatException catch (e) {
  print("Hata mesajı: ${e.message}");
  print("Hata kaynağı : ${e.source}");
} catch (e) {
  print("Hata çıktı ${e}");
} finally {
  print("Program Bitti");
}
}