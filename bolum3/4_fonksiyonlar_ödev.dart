/*
SORU 1: Parametre olarak bir tane int sayı alan fonksiyon yazınız.
Bu fonksiyon aldığı değer kadar olan çift sayıların toplamını geriye döndürsün.

SORU 2: Daire alanını hesaplayan fonksiyonu yazınız. PI sayısı opsiyonel olmalı.Eğer PI sayısı verilmediyse varsayılan olarak 3,14 olarank hesaplama yapın.(

SORU 3: Bir üçgenin kenarlarını isimlendirilmiş parametre olarak alan fonksiyon yazınız.
Bu fonksiyon kenar değerine göre bu üçgenin çeşit kenar ikizkenar veya eşkenar olduğu ekrana yazdırsın, geriye bir değer döndürmesin.
 */
void main(List<String> args) {
  //CEVAP 1:
  int toplam = ciftSayilarinToplaminiBul(10);
  print("Toplam :$toplam");
  
  //CEVAP 2:
  double alan1 = daireAlanHesapla(2);
  print("1.Dairenin Alanı: $alan1");
  double alan2 = daireAlanHesapla(8,3);
  print("2.Dairenin alanı: $alan2");

  //CEVAP 3:
  ucgeninCesidiniSoyle(kenar1:20 ,kenar2:20 ,kenar3:20);

}

//CEVAP 3 DEVAMI...
void ucgeninCesidiniSoyle({int kenar1 =1, int kenar2=1, int kenar3=1}){
  if(kenar1 == kenar2 && kenar2 == kenar3){
    print("Eş kenar üçgendir.");
  } else if(kenar1 == kenar2 || kenar1  ==  kenar3 || kenar2 == kenar3){
    print ("İkiz kenar üçgendir.");
  } else{
    print("Çeşit kenar üçgendir.");
  }
}


//CEVAP 2 DEVAMI...
double daireAlanHesapla(double yariCap, [double piSayisi = 3.14]){
  return piSayisi*yariCap*yariCap;
}

//CEVAP 1 DEVAMI...
int ciftSayilarinToplaminiBul(int sayi){
  int toplam = 0;

  for (int i = 0; i < sayi; i++){
    if (i % 2 == 0){
      toplam = toplam + i;
    }
  }
  
  return toplam;

}



