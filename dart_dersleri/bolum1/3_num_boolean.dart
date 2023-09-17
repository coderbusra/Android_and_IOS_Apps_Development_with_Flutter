/* num : tamsayı veya ondalıklı bir ifadeyi saklayabilir.
  int = tamsayı saklarken kullanılan veri türüdür.
hexadecimal değerleride saklayabilir. 0xAABBCC

double = ondalıklı ifadeler için kullanılan veri türüdür.
exponents değerli saklayabilir, 1.42e5

var anahtar kelime ile de tamsayı veya ondalıklı ifade saklayabilir.
var olarak int değer atandıysasonrasında double değer atanamaz.

değişkenlerimize ilk değerleri atamak zorundayız, null değer kabul edilemez.
null değerlerin kabul edilmesini istiyorsak int?, double? bool? gibi farklı değişken tanımları yapmamız gerekir.

boolaean = turu/false değerleri alır.
*/
void main(List<String> args) {
  int yas = 34;
  print(yas);
  yas =20;
  print(yas);
  
  num yil = 1988;
  print(yil);

  double sayi1 = 54;
  print(sayi1);

  num sayi2 = 12.5;
  print(sayi2);

  int kilo = 57.7.toInt(); // tanımlanan sayıyı tam syıya çevirmek için kullanılır.
  print(kilo);

  var sayi3 = 50;
  // sayi3 =  int olarak tanımlandığı için bir metinsel ifade ya da ondalıklı değer alamaz.

  int numara;
  numara = 10; // değişkene değer vermediğimizde null değer alır. Yani değişken tanımlanmış ama içine henüz bir değer konulmamış (initialize edilmemiş).
  print(numara+5);

  // eğer değişkene null değer atamak istiyorsak:
  double? s1; 
  // ya da double? s1=null;
  print(s1);

  int hexadecimal = 0xAABBCC;
  print(hexadecimal);
  
}