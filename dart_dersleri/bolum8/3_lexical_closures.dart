/**
 * Closure özel bir fonksiyondur, closure ile bir üst kapsamdaki değişkenlerin değerlerini değiştirebiliriz.
 */
// lexical variable scope
void main(List<String> args) {
  var mainDegiskeni = 1;

  void a() {
    var aDegiskeni = 2;
  
  void b() {
    var bDegiskeni = 3;
    print(aDegiskeni);
    print(mainDegiskeni);
    }
  }

  /* var d = topla();
  var sonuc = d(5);
  print(d); */

  var dondurulenFonksiyon = topla(3);
  var sonuc = dondurulenFonksiyon(4);
  print(sonuc);
}

Function topla(int eleman){
  return (int deger) => eleman * deger ;
}