/**
 *   KURUCU METHODLAR - CONSTRUCTORS
 * Bir sınıfta nesne ürettiğimizde tetiklenen yapılardır.Bu yapılar kullanılarak nesnelerinimizi veri göndererek oluşturabilir, nesneleri kullanmadan önce gerekli atamaları ve ayarları yapabiliriz.
 * 
 * Farklı türde kurucu oluşturabiliriz.
 *  1-Default : Sınıf adının yanına () dediğimizde çalışan ve de sınıf adıyla aynı olan methoddur.
 * Ogrenci emre = new Ogrenci() dediğimizde aslında default kurucu çalışır.
 * Defualt constructor sınıfın içinde eğer elle yazıp belirtmesek bile olan Ogrenci(){} şeklinde tanımlı boş bir methoddur.
 * Kurucu methodların geri dönüş tipi olmaz.,
 * 
 *  2- Parametreli Kurucu Method : Aslında default constructorın parametre almış haline denir.
 *  Ogrenci emre = new Ogrenci("emre");
 * 
 *  Dart dilinde method overloading olmadığı için sadece ya default yapıcı ya da parametreli yapıcı olmalıdır.
 * 
 * 3- Named (İsimlendirrilmiş) : Sınıf içerisinde
 * SınıfAdi.methodAdi(){
 * buraya kodlar gelir
 * }
  // İstediğiniz sayıda isimlendirilmiş kurucu oluşturabiliriz.
 * 
 */
void main(List<String> args) {
  Araba honda = Araba(2020, "Honda", true);
  /*honda.marka = "Honda";
  honda.modelYili = 2020;
  honda.otomatikMi = true; */
  honda.bilgileriSoyle();
  honda.modelYili = 2021;
  honda.bilgileriSoyle();

  var reno = Araba(2019, "Reno", false);
  reno.bilgileriSoyle();

  var citroen = Araba.markasizKurucuMetot(false, 2015);
  Araba suzuki = Araba.modelYiliOlmayanKurucuMetot(true, "Suzuki");
  suzuki.bilgileriSoyle();
  suzuki.yasHesapla();

}

class Araba {
  int? modelYili;
  String? marka;
  bool? otomatikMi;

    /* Araba(){
      print("Kurucu metot tetiklendi");
    }
     */

    Araba(this.modelYili, this.marka, this.otomatikMi){
      print("Kurucu metot tetiklendi");
    }
    Araba.markasizKurucuMetot(this.otomatikMi, this.modelYili);
    Araba.modelYiliOlmayanKurucuMetot(bool otomatikMi, String marka) {
    this.otomatikMi = otomatikMi;
    this.marka = marka;
    }
    /*  Araba(int yil, String m, bool o){
      print("Kurucu metot tetiklendi");
    }
     */

    /*
      this.modelYili = modelYili;
      this.marka = marka;
      this.otomatikMi= otoMatikMi;
    */
    
    /*
      modelYili = yil;
      marka = m;
      ototmatikMi = o;
    */
  void bilgileriSoyle () {
    print(
      "Arabanın model yili ${modelYili}, markası : ${marka} otomatik mi: ${otomatikMi}");
  }

  void yasHesapla () {
    if (modelYili != null)
    print("Arabanın yaşı ${2021 - modelYili!}");
    else 
    print("Model yılı olmadığından yaş hesaplanamadı");
    // Burdaki ünlem null olabilecek şeyleri null değilmiş gibi kullanmamızı sağlıyor.
  }
  
}