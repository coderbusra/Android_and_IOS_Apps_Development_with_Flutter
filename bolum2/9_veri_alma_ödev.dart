import 'dart:io';
/**
 * ÖRNEK 1: İki notu girilen öğrencinini ortalamasını bularak sonucu ekranda gösteren algoritmayı yapın.
 * ÖRNEK 2: Fiyatı girilen ürüne %18 KDV ekleyerak son fiyatı hesaplayan algoritmayı yazınız.
 */
void main(List<String> args) {
  print("ÖRNEK 1:");

  print("birinci sınav notunu giriniz:");
  int birinciNot = int.parse(stdin.readLineSync()!);
  
  print("ikinci notu giriniz:");
  int ikinciNot = int.parse(stdin.readLineSync()!);

  double sonuc = (birinciNot+ikinciNot)/2;
  print("ortalamanız $sonuc");
        /*benim aklıma gelen yöntem*/
  //print("sınav ortalamanız: ${((birinciNot)+(ikinciNot))/2}");
  
  print("ÖRNEK 2:");

  print("ürünün fiyatını giriniz:");
  int urun = int.parse(stdin.readLineSync()!);

  double kdvliFiyat = (urun*18)/100 + urun ;
  print("ürünün KDV'li fiyatı: $kdvliFiyat");

}