import 'dart:mirrors';

import '../bolum6/1_kalitima_giris_polimorfizm.dart';

/**
 * Abstract soyut sınıf: Sınıflar arasında soyutlama yapmak için kullanılır.
 * Abstract sınıflardan nesne üretilmez , abstract sınıflarda normal ve abstract methodlar olur
 * abstract methodlar alt sınıflarca override edilmek zorundadır.
 * 
 * Bir sınıfta bir tane abstract method varsa o sınıf mutlaka abstract tanımlanmalıdır.
 * 
 * 
 */
void main(List<String> args) {
   Sekil s1 = Kare(10);
   print(s1.alanHesapla());
   print(s1.cevreHesapla());
   s1.selamla();

   Sekil s2 = Dikdortgen(4, 6);
   print(s2.alanHesapla());
   print(s2.cevreHesapla());
   s2.selamla();

   List<Kare> tumKareler = [];
   List<Dikdortgen> tumDikdortgenler = [];
   List<Sekil> tumSekiller = [];
   tumSekiller.add(s1);
   tumSekiller.add(s2);

   test(s1);
   test(s2);

}

void test(Sekil sekil) {
  sekil.selamla();
}
// abstract classlarda içeriği yazılabilen gövdesi dolu olan fonsiyon olabilir bunun için sadece bir tane gövdesi yazılmamış fonksiyon olması yeterlidir.
// abstract classlardan nesne üretilemez.
abstract class Sekil {
  double alanHesapla();
  double cevreHesapla();
  void selamla(){
    print("Ben şekil sınıfındanım");
  }
}
class Kare extends Sekil {
  int kenar;

  Kare(this.kenar);
  @override
  double alanHesapla() {
    return kenar * kenar.toDouble() ;
  }

  @override
  double cevreHesapla() {
    return kenar * 4.toDouble();
  }

  @override
  void selamla() {
    print("Ben kare sınıfındanım");
  }
}

class Dikdortgen extends Sekil {
  int en, boy;

  Dikdortgen(this.en, this.boy);

  @override
  double alanHesapla() {
    return en * boy.toDouble();
  }

  @override
  double cevreHesapla() {
    return (en + boy)*2.toDouble();
  }
  @override
  void selamla() {
    print("Ben dikdörtgen sınıfındanım");
  }
}