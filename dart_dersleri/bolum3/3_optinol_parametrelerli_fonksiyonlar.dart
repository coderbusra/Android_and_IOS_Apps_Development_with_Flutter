

/**
 * Methodlarımıza geçtiğimiz parametrelerin isteğe bağlı olmasını yani verilse de olur verilmese de olur gibi durumlarda süslü ve köşeli parantez kullanırız.
 * Eğer köşeli parantez [] kullanırsak bu ilgili parametrelerin methoda gönderilmesi zorunluluğu ortadan kaldırılır.
 * Eğer süslü parantez {} kullanırsak burda da parametreler isteğe bağlıdır ama bu parametreleri belirtirken sıralama önemini kaybeder ve parametreleri geçerken isimlerini belirtmek zorunda kalırız.
 * Ayrıca method tanımlarında parametre = diyerek varsayılan değerler atayabiliriz. Bu değerler sayaseiinde eğer kullanıcı method parametelerini atamamışsa bu varsayılan değerler kullanılır.
 * Parametre listesinde ya [] kullanılır ya da {} kullanılır, ikisi aynı anda kullanılmaz.
 */

Future<void> main(List<String> args) async {
  //int toplam = sayilariTopla(4, 5, 6);
  
/*int toplam = sayilariTopla(2,3);
  int toplam2 = sayilariTopla(5,6,9);
  print("Toplam : $toplam");
  print("Toplam2 : $toplam2"); */

  int toplam = sayilariTopla(4, sayi2: 5, sayi1: 8); //sayi4 mutlaka sayı olarak belirtilmeli.
  print("Toplam: $toplam");

  int hacim = hacimHesapla(boy : 5, en: 3, yukseklik: 10);
  print("Hacim: $hacim");
}

// required parameter(bu sayıları mutlaka bu sayıda ve bu sırayla atanır.)

/* int sayilariTopla(int sayi1, int sayi2, int sayi3) {
  return sayi1 + sayi2 + sayi3;
} */

// Optional Parameter (Kullanıcı isterse girebilir istemezse girmez)
/* int sayilariTopla(int sayi1, [int sayi2 = 0, int sayi3 = 0]){
  return sayi1+ sayi2+ sayi3;
} */
//null değeri return da döndüremediği için = 0 değerini atadık.

// Optional Named Parameter

int sayilariTopla(int sayi4 ,{int sayi1 = 0, int sayi2 = 0, int sayi3= 0}){
  return sayi4 + sayi1 + sayi2 + sayi3 ; 
}

int hacimHesapla({int en = 1, int boy = 1, int yukseklik = 1}){
  return en * boy * yukseklik;
}