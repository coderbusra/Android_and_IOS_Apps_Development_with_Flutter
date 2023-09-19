import 'dart:math';

/**
 * Sınıflarımız oluşturken oluşturduğumuz değişkenlere(property) için de null safety özellikleri geçerlidir. Bu özellikleri ilk defa uyguladığımızdan karışık gelebilir. 
 * 
 * Çünkü bu propertylerin getter ve setter metotları doprudan veya dolaylı olarak vardır. Bundan dolayı da bu değişkenler aynı scope içinde farklı değerlerle üretilebilir. Siz bu yapılara her erişim yaptığınızda farklı sonuçlar alabilirsiniz.
 * 
 * Bunun çözümü ise ilgili veriyi bir değişkende saklayıp, getter üzerinden değil değişken üzerinden kontrolleri yapmanızdır.
 */

class MetinUretici {
  String? metin = "emre";
  
}

class A extends MetinUretici{
  String? get metin => null;
}

class RastgeleMetinUretici {
  String? degerUret() {
    if (Random().nextBool()) {
      return 'string ifade';
    } else
      return null;
  }
  
  //int? get yas => 34;
}
void main(List<String> args) {
  final uretici = RastgeleMetinUretici();
  String? sonuc = uretici.degerUret();

  if (sonuc == null) {
    print("Null değer oldu");
  } else {
    metniYazdir(sonuc);
  }

  MetinUretici m = MetinUretici();
  String? met = m.metin;

  if (met != null)
  metniYazdir(met);
}

void metniYazdir(String ifade) {
  print(ifade);
}




