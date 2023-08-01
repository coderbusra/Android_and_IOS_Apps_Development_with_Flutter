/**
 * Map yapısıda set gibi sırasız bir şekilde elemanları saklayan bir koleksiyon öğesidir.
 * Bu yapıyı listelerden ve setten ayıran özellik ise elemanları key-value olarak saklamasıdır.
 * Herhangi bir veri türü kullanılabilir ama burada önemli olan key değerlerin unique yani eşsiz olması gerekmektedir.
 * 
 * Map yapısını sözlüğe benzetebiliriz.Tıpkı sözlük gibi birbirinden farklı elemanları içeriri.
 * Sabit uzunlukta değildir, dinamik uzunluğa sahiptir.
 */
void main(List<String> args) {
  Map<String, int> alanKodlari = {"ankara": 312, "bursa": 224, "istanbul": 212};

  print(alanKodlari);
  print(alanKodlari["bursa"]);

  Map<String, dynamic> busra = { //key String, value dynamic
    "soyad":"busra",
    "yas":20,
    "bekarMi": true
  };

  List sayilar = [0, 1, 2];

  Map<String, dynamic> deneme = Map();
  Map<String, dynamic> deneme1 = {};

  deneme1['yas'] = 55;
  print(busra['yas']);

  for (String oankiAnahtar in busra.keys) {
    print(oankiAnahtar);
    print("***1");
    print(busra[oankiAnahtar]);
    print("***2");
  }
  for (dynamic deger in busra.values) {
    print(deger);
    print("***3");
  }
  for (var element in busra.entries){
    print("Key : ${element.key} değeri : ${element.value}");
    print("***");
  }
  if (busra.containsKey("yas")){
    print("Bulunan yaş değeri ${busra['yas']}");
  }

}