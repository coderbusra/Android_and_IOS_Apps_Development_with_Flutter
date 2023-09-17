/**
 * Generic tipleri belirtirken de nullablee ve non-nullable kavramları geçerlidir.
 * Burda önemli olan ? ' ni nereye koyduğumuzdur.
 * 
 * Liste null olabilir diyorsak List<String>?
 * Listenin bazı değerleri null olabilir diiyorsak List<String?> şeklinde belirtebiliriz.
 */

void main(List<String> args) {
  List<String> stringListe = ['emre', 'hasan', 'ali'];
  List<String>? nullOlabilecekStringListesi;
  List<String?> nullOlabilecekStringleriTutanListe = ['emre', null, 'hasan'];

  print('string listesi $stringListe');
  print('null olabilecek liste $nullOlabilecekStringListesi');
  print('null Olabilecek Stringleri Tutan Liste $nullOlabilecekStringleriTutanListe');
  
}