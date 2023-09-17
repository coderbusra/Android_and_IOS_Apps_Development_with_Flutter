/**
 * Eğer bir nullable tipin null olmadığından eminseniz, null assertion operator yani ! kullanabilirsiniz, böylece dart o değişkene non-nullable olarak davranır ve sorun kalmaz. 
 * Bu işareti kullanınca şunu demiş olursunuz : değer null olmayacak bu yüzden bu değeri non-nullable bir değişkene atabilirsiniz.
 * 
 * Eğer düşüncenizde hatalıysanız/haksızsanız dart run-timeda bir hata fırlatır. Böylece programımız null hatalarına açılmış olur bu yüzden yüzde yüz kodunuzun null olmayacağından emin değilseniz bunu kullanmayın.
 * 
 * Özetle ! koyduğunuzda dart'a şunu dersiniz. Biliyorum bu değişken null olabilir ama söz veriyorum ki null değer yok, o yüzden bunu null değer kabul etmeyen bir değişkene atayabilirsiniz.
 * 
 * Dart aynı scopeda ise o değişken nullable bile olsa null olup olmadığını anlayabilir. Farklı scopeda yani kapsamda emin olamaz.
 */

int? nullOlabilirAmaDegil = 1;
 
 void main(List<String> args) {
  int a = nullOlabilirAmaDegil!;
  var nullDegerTutanListe;
  int b = nullDegerTutanListe.first!;
  int c = nullDegerDondurebilirAmaDondurmeyecek()!.abs();
}
// abs mutlak değerini bulur. 

int? nullDegerDondurebilirAmaDondurmeyecek() {
  return 5;
}