/*Soru 2)

Ogrenci isimli sınıf oluşturun. Bu sınıfta ogrencinin idsi ve not değeri tutulmalı. 100 elemanlı bir listede id ve not değerlerinin rastgele oluşturarak bu ogrencileri saklayın ve bu öprencileri yazdıran metotu yazın.
 */


import 'dart:math';

import '2_ogrenci.dart';

void main(List<String> args) {
  Ogrenci ogr1 = Ogrenci(id: 5, notDegeri: 10);
  final tumOgrenciler = List.filled(5, Ogrenci());

  ogrenciListesiniDoldur(tumOgrenciler);
  for (Ogrenci oankiOgrenci in tumOgrenciler) {
    print(oankiOgrenci);
  }
  print("Tüm öğrencilerin not ortalamasını " + ogrencilerinOrtalamasiniHesapla(tumOgrenciler).toString());
}

ogrencilerinOrtalamasiniHesapla(List<Ogrenci> tumOgrenciler) {
  int toplam = 0;
  for(Ogrenci oankiOgrenci in tumOgrenciler) {
    toplam = toplam + oankiOgrenci.notDegeri;
  }
  return toplam / tumOgrenciler.length;
}

void ogrenciListesiniDoldur(List<Ogrenci> liste) {
  for(int i=0; i<liste.length; i++){
    liste[i] =
    Ogrenci(id: Random().nextInt(1000), notDegeri: Random().nextInt(100));
  }

}
