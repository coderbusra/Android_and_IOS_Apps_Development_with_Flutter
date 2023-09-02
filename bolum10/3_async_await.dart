void main(List<String> args) {
  print("İnternetten kişi verisi getirilecek");

  kisiyleIlgiliIslemler();
  print("Başka işler yapılacak");

  print("İşlem bitti");
}

void kisiyleIlgiliIslemler() async {
  String kisi = await kisiVerisiniGetiri();
  print(kisi.length);
}

Future<String> kisiVerisiniGetiri() {
  return Future.delayed(Duration(seconds: 3), (){
    return "Kişi adı : Emre id: 100";
  });
}