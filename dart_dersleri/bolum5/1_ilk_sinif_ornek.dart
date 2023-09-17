// NESNE YÖNELİMLİ PROGRAMLAMAYA GİRİŞ
/**
 * Sınıf : Kendi veri türlerimimz veya soyut olan taslaklara denir.Kendi içinde değişkenlere ve methodlara sahiptir.
 * İstediğimiz bir nesnenin veya varlığın bilgisayar dillerindeki tanımıdır.
 *
 *  Nesne : Oluşturulan soyut ve taslak olan sınıflardan üretilen örneklere denir.
 * Nesnelere sınıfın sahip olduğu değerlere ulaşmak için kullandığımız referanslardır diyebiliriz.
 * 
 * Sınıf eğer bir uzaktan kumandalı araba ise nesne onu kontrol ettiğimiz kumandadır.
 * 
 */

void main(List<String> args) {
  Ogrenci emre = Ogrenci(); // burdaki emre Ogrenci clasının nesnesi ya da instance
  emre.ogrAd = "emre altunbilek";
  emre.ogrNo = 230;
  emre.aktifMi = true;
  Ogrenci hasan = Ogrenci();
  Ogrenci ayse = Ogrenci();

  var kemal = Ogrenci(); 
  dynamic yunus = Ogrenci();
// kemal'in ve yunusun Ogrenci sınıfının bir nesnesi olduğunu belirtmenini farklı şekli.
} 
//kendi veri türümüzü hazırlamak istiyorsak sınıflardan yararlanacağız.
// Değişkenler ve Fonksiyonlar küçük harfle yazılırken Sınıf adları büyük harfle başlar.
class Ogrenci {
  //instance variables
  int ogrNo = 1;
  String? ogrAd = "";
  bool? aktifMi = true;
// class'ların içindeki fonksiyonlara method denir.
  void dersCalis(){
    print("Öğrenci ders çalışıyor");
  }
}