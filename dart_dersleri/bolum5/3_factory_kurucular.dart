import '1_ilk_sinif_ornek.dart';

/**
 * Normalde kurucu metotlar geriye bir değer döndürmez. Factory kurucu metodumuz ise özel bir metottur ve geriye değer döndürür.
 */
void main(List<String> args) {
  Ogrenci emre = Ogrenci(5, "emre");
  Ogrenci hasan = Ogrenci.idSiz("hasan");
  Ogrenci ayse = Ogrenci.factoryKurcusu(-9, "ayşe");

  print(ayse.id);
  print(ayse.isim);
  int sayi = toplam();

}

int toplam(){
  return 3+5;
}

class Ogrenci {
  int id = 0;
  String isim = "";

  Ogrenci(this.id, this.isim){
    print("Varsayılan kurucu calıstı");
  }
  Ogrenci.idSiz(this.isim){
    print("İsimlendrilimiş kurucu çalıştı");

  }

  factory Ogrenci.factoryKurcusu(int id, String isim){
    if(id < 0){
      return Ogrenci(5, isim);
    } else 
      return Ogrenci(id, isim);

  }
}