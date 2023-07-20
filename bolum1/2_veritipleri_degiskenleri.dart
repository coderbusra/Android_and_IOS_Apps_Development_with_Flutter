/* VERİ TİPLERİ VE DEĞİŞKEN KAVRAMI 
  DEĞİŞKEN : Bir işlemi gerçekleştirmek için yapılması gereken ilk şey veriyi hafızaya almaktır.
İşlem yapmak istediğimizde de veriyi hafızadan çeğırıp gerekli işlemleri yerine getirmektir.
Hafızadaki verileri ifade etmek için programlama dillerinde değişkenleri kullanırız.
  Özetle vermek gerekirse; programlama dilinde işlediğimiz verileri bilgisayarın hafızasında tutmak için yapmış olduğumuz tanımlamalardır.

  Tutulan verinin türüne göre farklı veri tipleri vardır. Dart built - in olarak şu tipleri içerir :
     -Number
      ~ int : Tamsayıları
      ~ double : Ondalıklı sayıları
    - String : Metinsel ifadeleri
    - boolean : true/false  

  Tüm veri tipleri Object yani nesneleridir.

  var anahtarı kelimesi variable anlamına gelir ve veri türünü belirtmek istiyorsak kullanırız.
  Atanan ifadeye göre otomatik olarak türü belirtir.
 */
void main(List<String> args) {
  int yas = 34;
  double ortalama = 5.6;
  num yil =1999;
  print(yas);
  print(ortalama);

  String ad = "Busra";

  print(ad);
  print(ad + "'nın sevdiği renkler ");
  print(ad + "'nın yaşı");

  bool kadinMi = true;
  bool issizMi = true;

  print(kadinMi);
  print(issizMi);

  var okul = "ege";
  print(okul);
  var okulNumarasi = 223311015;
  print(okulNumarasi);
  var kedisiVarmi = false;
  print(kedisiVarmi);

}