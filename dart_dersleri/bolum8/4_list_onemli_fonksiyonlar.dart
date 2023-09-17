void main(List<String> args) {
  Person emre = Person(3, "emre");
  Ogrenci hasan = Ogrenci(1, "hasan", 10);
  Person ayse = Ogrenci(8, "ayse", 8);
  var yunus = Person(6, "yunus");
  var ali = Ogrenci(1, "ali", 4);

  List<Person> tumOgrenciler = [emre,hasan,ayse,yunus,ali,emre, ali];
  // sort elemanları sıralamaya yarar.
  tumOgrenciler.sort((ogr1, ogr2 ){
    if (ogr1.id < ogr2.id) {
      return -1;
    } else if (ogr1.id > ogr2.id) {
      return 1;
    } else
      return 0;
  });

  print(tumOgrenciler);


  // Listeyi gezer ve map yapısını var olan bir yapıyı başka bir yapıya değiştirmek için kullanılır.
  var mapIterable = tumOgrenciler.map((Person e) => "${e.isim} ");
  print(mapIterable);

  var mapList = tumOgrenciler.map((Person e) => "${e.id}").toList();
  print(mapList);

  var mapSet = tumOgrenciler.map((Person e) => "${e.id}").toSet();
  print(mapSet);
  
  

  tumOgrenciler.add(yunus);
  tumOgrenciler.addAll([ayse, ali]);

  print(tumOgrenciler);

  bool sonuc = tumOgrenciler.any((Person element) => element.id > 10);
  print(sonuc);

  Map<int, Person> yeniMap = tumOgrenciler.asMap();
  print(yeniMap);
  print(yeniMap[0]);
  print(yeniMap[0]!.isim); //null değer olabileceği için ! koyduk
   // Listeyi  Map'e dönüşstürdü. Süslü parantez varsa map yapısı ya da set yapısı {} eğer key-value varsa map vardır.
  print(tumOgrenciler.contains(emre)); //tumOgrencilerde emre var mı?
  print(tumOgrenciler.contains(Person(3, "emre")));

  bool sonucEvery = tumOgrenciler.every((element) => element.isim.length > 0);

  print(sonucEvery);

  var bulunan = tumOgrenciler.firstWhere((element) => element.id == 1); //id de ilk 1 olanı ver.
  print(bulunan);




  //iterable (set yapısı yazabilirim ({}) , dışardaki set yapısı eklenebilir, yepyeni bir liste oluşturulabilir([]).)

/*   var liste1 = List<Ogrenci>.filled(5, Ogrenci(0, "", 0));
  // List.from ve List.of bizden iterable yapılardır. İterable elemanları art arda okunabilen yapılardır. Mesela list ve setler.
  // List.from = all elements (tüm öğelerden liste oluşturur)
  // List.of =  from elemnts (öğelerden liste oluşturur)
  var listeFrom = List<Person>.from(tumOgrenciler);
  var listOf = List<Ogrenci>.of(tumOgrenciler.whereType<Ogrenci>());

  // her eleman için bir index tutar bu index'i kullanarak oluşturulacak elemanlara müdahale edilebiliyor.
  var listeGenerate = List<int>.generate(5, (index) => index + 2);
  var listeGenerate2 = List<Ogrenci>.generate(5, (index) => Ogrenci (index, "$index" , index*2)); 

  var degistirilemezListe = List.unmodifiable([0, 1, 2]);
  //degistirilemezListe.add(5);

  
  print(listeFrom);
  print("****");
  print(listOf);
  print("****");
  print(listeGenerate2);
  print("****");
  print(listeGenerate);
  print(degistirilemezListe.reversed);


*/
}

class Person {
  int id = 0;
  String isim = "";

  Person(this.id, this.isim);
  @override //metot ezme
  String toString() {
    return "id:$id ve isim:$isim\n";
  }
}

class Ogrenci extends Person {
  int alinanDersSayisi = 0;
  Ogrenci(id, isim, alinanDersSayisi) : super(id, isim);
  @override
  String toString(){
    return "id:$id ve isim:$isim ve alinan ders sayısı : $alinanDersSayisi\n";
  }
}