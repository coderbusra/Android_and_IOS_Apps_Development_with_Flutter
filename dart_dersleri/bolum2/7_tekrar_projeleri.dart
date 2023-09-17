/**
 *  SORU 1 : 3 tane double oluşturup bunların ortalamasını yazdıran programı yazınız.
 *  SORU 2 : Kenarlarını girdiğiniz üçgenin çeşidini yazdıran programı yazınız.
 *  SORU 3 : Vize ve final notlarını alıp dersi geçip geçemediğini bulan programı yazınız. (geçme notu alt değeri = 50 , vizenin %40 finalin % 60'ı alınır.)
 *  SORU 4 : Kendi adınızı ekrana 5 kere yazdıran uygulamayı tüm döngü ifadeleriyle yazınız.
 *  SORU 5 : 1' den 100'e kadar olan ve 15 ile tam bölünen sayıların karelerini ekrana yazdırınız.
 *  SORU 6 : Tanımlanan int bir sayının faktoriyelini bulan uygulamayı yazınız.
 */ 

main (List<String> args) {

  // CEVAP 1:
  print("CEVAP 1:");

  double sayi1, sayi2, sayi3;
  sayi1 = 12;
  sayi2 = 14;
  sayi3 = 15;
  print("Girilen $sayi1 , $sayi2 ve $sayi3 sayılarının ortalaması ${((sayi1+sayi2+sayi3)/3)}");

  //CEVAP 2::
  print("CEVAP 2:");

  int kenar1 ,kenar2 ,kenar3 ;
  kenar1 = 10;
  kenar2 = 10;
  kenar3 = 15;

  if ((kenar1 == kenar2) && (kenar1 == kenar3)) {
    print("bu üçgen eşkenardır.");
  } else if ((kenar1==kenar2) || (kenar1==kenar3) || (kenar2==kenar3)){
    print("bu üçgen ikizkenardır.");
  } else {
    print("bu üçgen çeşitkenardır");
  }

  // CEVAP 3:
    print("CEVAP 3:");

    double vizeNotu=90;
    double finalNotu=50;
    double hesaplananNot=0;

    hesaplananNot=((vizeNotu * 40) + (finalNotu * 60))/100 ;

    if(hesaplananNot>=50){
      print("$hesaplananNot ile geçtiniz tebrikler") ;
    }else{
      print("$hesaplananNot ile kaldınız üzgünüz") ;
    } 

  // CEVAP 4:
    print("CEVAP 4:");

    for (int i=1; i<6; i++ ){
    print("$i.inci döngüde ismim:Büşra");
    }
    int kontrol=0;
    while(kontrol<=4){
      print("${kontrol+1}.inci döngüde ismim :Büşü");
      kontrol++;
    }
    int kontrol1=0;
    do {
      print("${kontrol1+1}.inci döngüde ismim : büşbüş");
      kontrol1++;
    }while (kontrol1<5);
    
    //CEVAP 5

     print("CEVAP 5:");
     for (int i = 0; i < 100; i++) {
      if((i % 3==0) && (i % 5==0)) {
        print("15'e tam bölünebilen $i'nin karei = ${i*i}");
      }
    }

    //CEVAP 6
    print("CEVAP 6:");

    int sayi=6;
    int sonuc=1;
    int sayac=1;

    while(sayac <= sayi){
      sonuc = sonuc * sayac;
      sayac++;
    }
    print("girdiğiniz $sayi sayisinin faktoriyeli:: $sonuc");

}