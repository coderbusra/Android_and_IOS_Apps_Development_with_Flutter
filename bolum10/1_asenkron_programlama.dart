/**
 * Senkron programlama: Program içerisinde bir işlem yapılırken, bu işlem bitmeden ikinci işleme geçilmez.
 * Asenkron : Senkron yapısının tam tersi.Yani arka planda bir işlem yapılırken başka bir işleme geçebilen yapıdır.
 */
void main(List<String> args) {
  print("Anne çocuğunu ekmek almaya yollar");
  uzunSurenIslem();
  print("Peynir zeytin hazırlanır");
  print("Kahvaltı hazır!");
}

void uzunSurenIslem() {
  print("Çocuk ekmek almak için evden çıkar");
  // Senkron çalışma örneği
  // sleep(Duraction(seconds: 10));

  // Asenkron yapılar 
  Future.delayed(Duration(seconds: 10), () {
    print("Çocuk ekmekle eve girer");
  });
}