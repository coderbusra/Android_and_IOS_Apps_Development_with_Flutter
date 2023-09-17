/**
 *  Programdaki karşılaştırma, matematiksel ve mantıksal işlemleri gerçekleştirirken kulanılan işaretlerdir.
 * 
 *  Aritmetik operatörler +,-,/,* ve %
 *     matematiteki karşılıklarının aynısıdır, sadece % operatörü mod alma işine yarar 5%2 = 1 (5 in 2 ile bölümünden kalanı veriri)
 *  Atama ve karşılaştırmma operatörleri +=, -=, /=, *=, %=
 *     sayi +=  ifadesi sayi = + 5 ifadesine denk gelir
 *     
 *  Karşılaştırma operatörleri <, > , <= , >= , ==, !=
 *    != eşit değilse durumu gösteriri
 * 
 *  Mantıksal Operatörler &&, __, ! (değil, not)
 *    && ve , || veya anlamına gelir. ! operatörü onündeli boolean değerinini tersine veriri.
 * 
 *  arttırma azaltma operatörleri
 *    ++ -> değişkeni 1 arttır.
 *    -- -> değişkeni 1 azaltır.
 *  Bu ifadelerin değişkenin sağında ve solunda olması önemlidir.
 *  sayi++ -> önce sayıyı kullan ssonra 1 arttır, ++sayi önce sayıyı 1 arttır sonra kullan anlamına gelir.
 * 
 *  İşlem önceliği 
 *    () -> önce parantez içi işletilir.
 *    ++ ve -- Değişkenden önce gelenler
 *    * ve /
 *    + ve -
 *    = atama işlemi
 *    ++ ve -- Değişkenden sonra gelenler
 * 
 */

void main(List<String> args) {
  double sayi1 = 9;
  double sayi2 = 6;

  print("$sayi1 + $sayi2 toplamı : ${sayi1+sayi2}");
  print("$sayi1 - $sayi2 farkı : ${sayi1-sayi2}");
  print("$sayi1 * $sayi2 çarpımı : ${sayi1*sayi2}");
  print("$sayi1 / $sayi2 bölümü : ${sayi1/sayi2}");
  print("$sayi1 % $sayi2 modu : ${sayi1%sayi2}"); // iki sayının bölümünden kalan
// ATAMA VE KARŞILAŞTIRMA OPERATÖRLERİ

double sayi3= 5;
sayi3 = sayi3 + 5;
print(sayi3);

sayi3 += 5; //sayi3 = sayi3 + 5
print(sayi3);

sayi3 %= 4;
print(sayi3);


// KARŞILAŞTIMA OPERATÖRLERİ <,>,<=,>= , == , !=

double sayi4 = 9;
double sayi5 = 5;

if(sayi4<=sayi5){

}else{
  print("Sayi $sayi4 küçük ve eşit değildir $sayi5");
}

String isim= "büşra";
String soyIsim= "büşra";

if(isim != soyIsim){
  print("isim ile soyisimle aynı değildir");
}else{
  print("isim ile soyisimle aynı değere sahip");
}

// MANTIKSAL OPERATÖRLER
//&& (VE DE), || (YA DA), ! (DEÜİL)

//JAVA VE KOTLİN BİLEN ==> HEM JAVA HEM KODLİN BİLEN
//JAVA VEYA KOTLİN BİLEN ==> BU DİLLERDEN SADECE BİRİNİ VEYA HER İKİSİNİDE BİLMESİ GEREKİR.

bool kosul1 = false;
bool kosul2 = false;

print(kosul1 && kosul2);
print(kosul1 || kosul2);
print(!kosul1);

}