/**
 * Fonksiyon kavramı sayesinde problemlerimizi küçük alt problemlere parçalayarak çok daha okunaklı hata bulması kolay uygulamalar geliştirebiliriz.
 *
 *  Bir uygulama geliştiriken bir problemi çözerken o problemde belli bir işi yapan kodları metodlara bölmemiz gerekir. Bunun için method ve fonksiyon oluşturabiliriz.
 * 
 * Methodlar parametre alabilir veya herhangi bir parametreye sahip olmayabilir.
 * Methodlar geriye bir değer dönderebilir.Değer döndürmeyen method tanımlarının başına void yazılır.
 * Dart dilinde return ve mothod geri döndürme veri tipi değeri opssiyoneldir, yani belirtmek zorunda değiiliz.(Belirtilmesi öneriliir)
 */
void main(List<String> args) {
  cevreyiHesapla();
  int sonuc = alanHesapla(6,8);
  print("alan : $sonuc");
  int hacim = hacimHesapla(8,9,10);
  print("Hacim $hacim");
  print(hacimHesapla(5, 8, 10));

}
// Parametresiz Fonksiyon 
cevreyiHesapla (){
  int en = 5, boy = 10;
  int cevre = (en+boy)*2;
  print("Çevre'nin değeri : $cevre");

}
// Parametre Alan Fonksiyon
alanHesapla(int sayi1, int sayi2){
  //print("alan ${sayi1*sayi2}"); return'süz hali 
  return sayi1 * sayi2;
}

hacimHesapla(int i,int j,int k){
  return i*j*k;
}