/**
 * Dinamik olarak büyüyen küçülen koleksiyonlarımız varsa sabit uzunkluklu listeler yerine büyüyen listeleri kullanırız. Bu listelere varsayılan olarak boyut vermemiz geremez.
 * Tanımlanması sabit uzunkuklu dizilere benzer sadece burada listenin boyutunu belirtmeyiz.
 * .add eleman ekler,
 * .clear tüm elemanları siler,
 * .remove verilen elamanı siler,
 * .remaveAt belirtilen indexteki elemanı siler.
 * Ayrıca [] kullanarak belli bir indexteki elemanı güncelleyebiliriz.
 */
void main(List<String> args) {
  List<int?> sayilar = []; //<int?> olursa listenin içinde null değer de olabileceğini belirtmiş oluyoruz.
  sayilar.add(1);
  sayilar.add(2);
  sayilar.add(3);
  sayilar.add(4);
  print(sayilar);
  print(sayilar.length);
  print(sayilar);
  sayilar.length = 100;

  List<int> sayilar2 = [1, 2, 3];
  sayilar2.add(55);
  print(sayilar2);

  final sayilar3 = List<int>.filled(10, 10, growable: true);
  sayilar3.add(53);
  print(sayilar3);
  print(sayilar3.length);

  final sayilar4 = List.empty(growable: true); //satatic listeyi dynamic listeye çevirme. 
  List<int> sayilar5 = [];
  //iki listede  aynı şeyi ifade eder.
  sayilar5.add(5);
  sayilar4.add(10);
  /*tek farkı sabitde olduğu gibi 
  sayilar5[1] = 52;
  diyemiyoruz*/
}