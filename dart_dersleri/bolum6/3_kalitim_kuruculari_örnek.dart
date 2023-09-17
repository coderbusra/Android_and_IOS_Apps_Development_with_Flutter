void main(List<String> args) {
  Kisi emre = Kisi("emre", 34);
  emre.kendiniTanit();

  Calisan hasan = Calisan("hasan", 30, 30000);
  hasan.kendiniTanit();
}

class Kisi {
  String isim;
  int yas;
  Kisi(this.isim, this.yas);
  void kendiniTanit(){
    print("Benim adım $isim ve yaşım $yas");
  }
}
//super ile Calisandaki nesneleri üst sınıfa yolladık.
class Calisan extends Kisi {
  int maas;
  
  Calisan(String name, int age, this.maas) : super(name, age);
  
@override
void kendiniTanit(){
  super.kendiniTanit();
  print("Maaşım da $maas ");
}
}