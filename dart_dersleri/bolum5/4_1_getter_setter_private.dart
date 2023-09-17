import '4_2_veritabani_islemleri.dart';
import '4_3_musteri.dart';

/**
 * private değişken ve fonksiyonlar: Bir sınıftaki değişken ve metotları bazen  eişime kapatmak isteyebiliriz. Bu durumlarda _ işareti ile bunları saklarız.
 * 
 * getter metotlatı: sınıf değişkenlerini okumak için kullanılan özel fonksiyonlardır.
 * Bu metotların amacı özellikle private yani dış dünyanın erişimine kapatılmış değişkenlerin gerekli olduğunda okunmasını sağlamaktır.
 * 
 * setter metotlar: sınıf değişkenlerine veri atamak için kullanılır. Bu metotların amacı özellikle private yani dış dünyanın erişimine kapatılan değişkenlere veri atamaktır, ayrıca veri ataması yapılırken gerekli olan kontrollerin ve işlemlerin yapılması içinn kullanılır.
 */
void main(List<String> args) {

  Musteri m1 = Musteri(123);
  m1.bilgileriYazdir();
  m1.musteriNoAta = 952;
  print(m1.musteriNoSoyle);
  Musteri m2 = Musteri(-999);
  
  VeriTabaniIslemleri db = VeriTabaniIslemleri();

  bool sonuc = db.baglan();
  if(sonuc){
    print("Bağlandım");
  }else{
    print("Bağlanamadı");
  }
}
