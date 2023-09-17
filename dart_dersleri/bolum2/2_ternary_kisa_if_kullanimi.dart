/*
ternary if yazımı ile kısa bir şekilde şart belirten ifadeler yazılbilir. Kullanımı :
koşul ? expressiona1: expression2
eğer koşul doğru ise expression1 değeri,yanlış ise expression2 değeri kullanılır.

kısa kulanımı ile değişkenlerin null değerde olup olmadıkları da kontrol edilebilir.
expression1 ?? expression2
burda expressi1 eğer  null değilse kullanılır, eğer null ise expression2 kullanılır.
*/

void main(List<String> args) {
  int sayi1 = 7;
  var sayi2 = 6;
  int kucukSayi;

  /* if(sayi1 < sayi2){
    kucukSayi = sayi1;
  }else{
    kucukSayi = sayi2;
  } */
  //sayi1 < sayi2 ? kucukSayi = sayi1 : kucukSayi = sayi2;
  /*yukardaki if else yapısının farklı bir gösterimidir */
  kucukSayi = sayi1 < sayi2 ? sayi1 : sayi2;
  print("küçük sayı : $kucukSayi");

  String? ad = "Büşra";
  String? soyad = null;
  String? mesaj;

  mesaj = ad ?? soyad;  /*burdaki ?? ad null değer değilse adı yazdır null ise soyadı yazdır demek oluyor.*/
  print("Merhaba $mesaj");
  }