/**
 * Senkron programlama: Program içerisinde bir işlem yapılırken, bu işlem bitmeden ikinci işleme geçilmez.
 * Asenkron : Senkron yapısının tam tersi.Yani arka planda bir işlem yapılırken başka bir işleme geçebilen yapıdır.
 */
void main(List<String> args) {
  print("Anne çocuğunu ekmek almaya yollar");
  print("Çocuk ekmek almak için evden çıkar");
  Future<String> sonuc = uzunSurenIslem();

  sonuc.then((String value) => print(value))
  .catchError((hata) {
    print(hata);
  });

  print(sonuc);
  print("Peynir zeytin hazırlanır");
  print("Kahvaltı hazır!");
}

// Senkron çalışma örneği
// sleep(Duraction(seconds: 10));

// Asenkron yapılar 

Future<String> uzunSurenIslem() {  
  
  return Future.delayed(Duration(seconds: 2), () {
    //return "Çocuk ekmekle eve girer";
    throw Exception("Bakkalda ekmem kalmamış");
  });

  return sonuc;
}