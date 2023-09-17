// For Döngüsü do ,do while, while
// For döngüsü  kaç kere çalışacağını bildiğimmiz döngülerde kullanılır.
// While ise öncelikle şartın kontrol edilip sonrasında işlem yapılır.
// Do While ise öncelikle yaptırılmak işlem yaptırılıp sonrasında bir kontrol yaptıracaksanız kullanılır.
/**
 * Döngü kullanımlarında break ve continue anahtar kelimelerini kullanacağımız durumlar olabilir.
 * break= calışan döngüden çıkılmasını
 * continue = döngü çalışırken belli bir durumda tekrar başa dönmesini sağlar.
 * döngülerde label yani etiketler kullanılabilir böylece birden fazla döngüyü etiketler kullanılabilir. Böylece birden fazla döngüyü bu etiketler ile kolayca kontrol edebiliriz.
 * Etiketler ile beraber break ve continue kelimleri kullanılabilir.
 * label : for(....){
 *    break label;
 * }
*/

void main(List<String> args) {
  // For döngüsü, programlama dillerinde temel olarak bir kod blokunu belirli bir sayıda ve üst üste çalıştırmak içen kullanılan bir döngüdür. Döngü başlangıcında kullanılan değişkene döngü içinde müdahale edilerek tekrar sayısı değiştirilebilir.
  for(int i=0 ; i<5 ; i++){  
  print("busra");
 }

  for (int i = 0; i<10; i++) {
    if(i % 2 == 0){
      print("$i");
    }
 }
  List isimListesi = ["emre","hasan","ali"];
  for(String gecici in isimListesi){
    print("$gecici");
  }

  for(int i=0; i<isimListesi.length; i++){
    print("okunan eleman " + isimListesi[i]);
  }
  // While döngüsü Önceden belirlenmiş bir koşul bozulana kadar devam eder.Koşulun her kontrolünden sonra döngü içeerisindeki işlemler bir kez yapılır.
  int sayac=0;
  while(sayac < 3){
    print("Okunan sayaç değeri $sayac");
    sayac ++ ;
  }
  // for ve while döngülerinde koşul, döngü başlamadan önce kontrol edilir. do while döngüsünde ise, bu kontrol her döngüden sonra gerçekleştrilir.Operasyon mantığında do while döngüsü, koşul ne olursa olsun en az bire çalıştırılır.
  int sayac2 = 1;
  do{
    print("Okunan sayac değeri: $sayac2");
    sayac2++;

  }while(sayac2<=5);
  // break ve continue ilgili döngüyü belli durumlarda sonlandırmaya veya belli durumlarda başa dönmep tekrardan çalışması gibi durumlarda kullanılır.
  for(int i=0; i<10; i++){
    if (i>5){ 
      break;
    }
    print("i değeri: $i");
  } //i ye bakacak 5 den büyük değilse ekrana yazdıracak 5 den büyüksen ekrana yazdırmayacak break => zıttı
  for (int i = 0; i <10; i++) {
    if(i>5){
      print("continue i değeri: $i");
    }
    else{
      print("i değeri 5'den küçük olduğu için herhangi bir işlem yapılmayacak");
      continue;
    }// continue aşağıda kod olabilir onları çalıştırma döngünün başına gel demek.
  }

  distakiDongu:for(int i=1; i<3; i++){
    for(int j=1; j<=3; i++){

      if(i==2){
        break distakiDongu;
      }
      print("$i * $j = ${i*j}");
    }
  }
  print("çarpım tablosu:");
  for(int i=1; i<=10; i++){
    for(int j=1; j<=10; j++){
      print("$i * $j = ${i*j}");
    }
  }
}