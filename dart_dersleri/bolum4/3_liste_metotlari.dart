void main(List<String> args) {
  List<int> sayilar = [];
  List<int> sayilar1 = [10, 5, 4, 3, 11, 9];

  if (sayilar.isNotEmpty) { //Boş olduğunda hata almamak için if yapısında yazdık.
    print(sayilar.first);
    print(sayilar.last);
  }
  print("Boş mu? :" + sayilar.isEmpty.toString()); //Eğer liste boşsa true değerini döndürür.
  print("Eleman sayısı : ${sayilar1.length}");
  print("Ters sırada: ${sayilar1.reversed}");
  print(sayilar1);
  sayilar1.add(23);
  print(sayilar1);
  sayilar1.remove(3); //Verilen elemanı siler.
  print(sayilar1);
  sayilar1.removeAt(1); //Verilen indeksteki elemanı siler.
  print(sayilar1);

  //sayilar.clear(); bütün listeyi temizler.
  if(sayilar.contains(9)){
    print("Listede 9 var");
  } else {
    print("Listede 9 yok");
  }
  print(sayilar1);
  print(sayilar1.elementAt(2)); //2.indexdeki elemanı ver.
  print(sayilar1.indexOf(11)); // elemanın kaçıncı indexde olduğunu söyler.

  sayilar1.shuffle(); // Rastgele olarak liste elemanlarının yerini değiştirir.
  print(sayilar1);
}
