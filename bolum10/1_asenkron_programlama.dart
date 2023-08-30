void main(List<String> args) {
  print("Anne çocuğunu ekmek almaya yollar");
  uzunSurenIslem();
  print("Peynir zeytin hazırlanır");
  print("Kahvaltı hazır!");
}

void uzunSurenIslem() {
  print("Çocuk ekmek almak için evden çıkar");
  Future.delayed(Duration(seconds: 10), () {
    print("Çocuk ekmekle eve girer");
  });// Future.delayed
}