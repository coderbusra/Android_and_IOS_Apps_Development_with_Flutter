void main(List<String> args) async{
  print("Program basladi");
  Future.delayed(Duration(seconds: 0), () {
    print("0 saniyelik işlem");
  });
  print("Program bitti");


Future<int> toplam = Future(() {
  int toplam = 0;
  for (int i = 0; i < 1000000000; i++) {
    toplam = toplam + i;
  }
  //return toplam;
  throw Exception("Toplam hesaplanamadı");
});

  //toplam.then((int toplam) => print(toplam)).catchError((hata) => print(hata));
  try {
    int forSonuc = await toplam;
    print("****** $forSonuc");
  } catch (e){
    print(e);
  }
// async ve await'lerde hata cath'leri için try cath ler kullanılabilir.
  var f2 = Future.value("emre");
  var f3 = Future.error("Hata ile biten future");
  
  f3.catchError((hata) => print(hata));
}