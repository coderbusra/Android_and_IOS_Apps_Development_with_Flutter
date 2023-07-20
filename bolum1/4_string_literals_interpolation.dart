/* string : Metinsel ifadeler için kullanılan veri türüdür.
Çift tırnaK veya tek tırnak ile belirtilebilir.
İki stringi birleştirmek için + operatörü kullanılır.
Briden fazla satır süren metinsel ifadeleri birleştirirken + kullanmasak da olur.
  'ifade 1'
  'ifade 2' olarak kullanilabilir.

Interpolition : string ifade içinde başka bir string ifadeyi ifade ederken kullanılır.
Ayrıca interpolation diğer veri türleri için de geçerlidir.
*/
import 'dart:io';

void main(List<String> args) {
  String isim = "busra";
  String soyIsim = "dertli";
  var kurs = 'Dart\'ın kullanımı';
  String kursTanimi = "Dart'ı ve Flutter'ı Öğreneceksiniz";

  print(isim + " " + soyIsim);
  print("$isim $soyIsim");
  print("soyadım olan $soyIsim'de bulunan karekter sayısı:" + soyIsim.length.toString());
  /* burda string ifade ile int bir ifadeyi birleştirmek için .toString ifadesini kullandık.*/
  print("karekter sayısı ${soyIsim.length}");
  print("Adım olan $isim kelimesinde bulunan karekter sayısı ${isim.length}");

  double en = 10;
  double boy = 12;
  
  print("Eni $en ve boyu $boy olan dikdörtgen alanı : $en*$boy");
  print("Eni $en ve boyu $boy olan dikdörtgen alanı : ${en * boy}");





}