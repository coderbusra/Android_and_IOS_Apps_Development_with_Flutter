/**
 *  Sınıfımızda nesne üretmeden bazı değişkenlere ve metodlara erişmek isteyebiliriz. Burada karşımıza static kavramı çıkar.
 * 
 *  Static kullanarak nesne değil sınıf değişkenleri ve metotları oluşturabiliriz.
 * Bir sınıfta tanımlanan metod ve değişkenlere erişirken mutlaka nesne üretmemiz gerekir. Ama biz bunları static olarak tanımlarsak artık nesne üretmeden bu değere erişebilir ve kullanabiliriz. Artık onlar neslenelere değil sınıfın method ve değişkenleridir.
 * 
 * ayrıca statik değişkenler kullanılana kadar değer alamazlar, bellekte yer ayrılmaz statik methodların içinde "this" anahtar kelimesi kullanılmaz.
 * 
 * static metotlar içinde nesneye özgü alanlara erişilmezken, nesneye özgü metot içerisinde static değerlere erişilebilir.
 */
void main(List<String> args) {
  Matematik m1 = Matematik(50, 20);
  m1.topla();
  m1.cikar();

  Matematik m2 = Matematik(30, 10);
  m2.topla();
  m2.cikar();

  Matematik m3 = Matematik(30, 10);
  m3.topla();
  m3.cikar();

 // static metotlara erişirken:
  print(Matematik.PI);
  Matematik.sinifAdiniSoyle();

  print("Toplam işlem sayısı ${Matematik.toplamIslemSayisi}");
}

class Matematik {
  // instance variable (nesne değişkeni)
  int birinciSayi = 0;
  int ikinciSayi = 0;
  static int toplamIslemSayisi = 0;
  

  // class variable (sınıf değişkeni) yani nesne üretmeden direkt ekrana yazdırabiliyoruz.
  static double PI = 3.14;
  static void sinifAdiniSoyle() {
    print("Ben matematik sınıfıyım.");
  }

  Matematik(this.birinciSayi, this.ikinciSayi);

  void topla() {
    sinifAdiniSoyle();
    toplamIslemSayisi++;
    print("Toplam ${birinciSayi + ikinciSayi}");
  }

  void cikar() {
    toplamIslemSayisi++;
    print("Fark ${birinciSayi - ikinciSayi}");
  }
  
}