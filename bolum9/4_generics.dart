/**
 * Dart optionally typed bir dildir. Yani veri tiplerini belirtmek isteğe bağlıdır.
 * Sürekli kullanılan koleksiyon yapıları (liste, map, set) varsayılan olarak heterojendir. Yani aynı koleksiyon yapısında farklı türde verileri saklayabiliriz. Ama yapmalı mısınız ?
 * 
 * Generic tipler sayesinde bir yapıda hangi tür verilerin olacağını söyleriz. Böylece bu yapılar type-safe olur, compile time da hatalı veri girişi tespit edilir ve bize hatamızı söylenir. Böylece run time da çıkabilecek hataların önüne geçilir.
 * 
 * Generic tipler <> içinde belirtilir. List<String> ifadesi bu listede sadece String veriler olacağı anlamı taşır. Bu listeye String dışında bir veri eklenirse daha programı çalıştırmadan hata alırız ve düzeltmemiz gerekir. Böylece daha güvenli kod yazmış oluruz.
 * 
 * Generic'ler dartta bulunan çoğu yapıda zaten vardır. List, map, set, Future, Stream gibi... Kendi oluşturduğunuz sınıflarda ve metotlarda da genericleri uygulayabilirsiniz. Böylece hem daha güvenli kod yazmış olursunuz hem de benzer amaçları gerçekleştiren kod yapılrını tek bir yapıda toplayabilirsiniz.
 */


// List<E> ==> Element
// Map <K> ==> Key
// Map <K, V> ==> Value
// R ==> Methodların return tipleri için
// Ogrenci< T extends Insan>

void main(List<String> args) {
  List<String> liste = [];
  liste.add("emre");
  liste.add("asdas");

  yazdir(liste);
} 
  yazdir(List liste) {
    print(liste[1].length);
  }


