/**
 * Dart dili, null değer alması mümkün olmayan ama null değer alacakmış gibi belirtilen nullable tiplere, non-nullable gibi davranır Buna type promation denir.
 * Dart tip sistemi, değişken null değer alacak şekilde oluşturulmuş olabilir, ama okunmadan hemen önce null dışında bir değer atanırsa dart bunu tespit edebilir.
 */

void main(List<String> args) {
  String? mesaj;

  if (DateTime.now().hour < 12) {
    mesaj = "günaydın";
  } else {
    mesaj = "iyi aksamlar";
  }

  print(mesaj);
  print(mesaj.length);

  //type promation from base class to derived class (temel sınıftan türetilmişi sınıftan tür promasyonu)
  Object metin = "bu bir string";

  if(metin is String)
  print(metin.length);


}