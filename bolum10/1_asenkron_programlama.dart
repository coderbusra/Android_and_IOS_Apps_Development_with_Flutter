/**
 * Senkron programlama: Program içerisinde bir işlem yapılırken, bu işlem bitmeden ikinci işleme geçilmez.
 * Asenkron : Senkron yapısının tam tersi.Yani arka planda bir işlem yapılırken başka bir işleme geçebilen yapıdır.
 */
void main(List<String> args) {
  print("Anne çocuğunu ekmek almaya yollar");
  print("Çocuk ekmek almak için evden çıkar");
  Future<String> sonuc = uzunSurenIslem();
  print(sonuc);
  print("Peynir ze ytin hazırlanır");
  print("Kahvaltı hazır!");
}

Future<String> uzunSurenIslem() {
  
  // Senkron çalışma örneği
  // sleep(Duraction(seconds: 10));

  // Asenkron yapılar 
  Future<String> sonuc = Future.delayed(Duration(seconds: 10), () {
    return "Çocuk ekmekle eve girer";
  });

  return sonuc;
}