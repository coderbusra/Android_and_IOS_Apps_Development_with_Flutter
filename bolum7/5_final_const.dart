/**
 * runtime = ctrl-f5 'e basınca ekranda uygulama gözükürken //final
 * compile time = ekranda çıktıyı görene kadarki hazırlıklar. //const
 * 
  "const" ve "final" anahtar kelimeri arasındaki fark ?

* Fark, belleğin nasıl tahsis edildiği ile ilgilidir.

* "const" değişkenleri derleme zamanında(compile time) değerlendirilirken "final" değişkenler çalışma zamanında (runtime) değerlendirilir.

* "const" değişkenleri sabit bir değerle başlatılmalıdır,
 oysa "final" değişkenler çalışma zamanında belirlenen bir değerle başlatılabilir.

* "const" değişkenllerin değeri ilan edilir edilmez belirlenir. Başlatıldıktan sonra değerini kullanmasanız bile bellekte yer kaplamaya devam eder. "final" değişkenleri ise tembel (lazily) olarak değerlendirilir, yani değerleri ilk kez erişilene kadar belirlenemez. 

* Genel olarak, derleme zamanında bilinen değerler için const, çalışma zamanında belirlenen değerler için final kullanmalısınız.
 */
  
 /*En önemli fark ise instance değişkenler sadece final olarak tanımlanır, const ile tanımlanmaz. const ile tanımlanması için static const olmalıdır.
 */
// IMMUTABLE DEGİŞMEZ.
void main(List<String> args) {
  

  /*
  var str = "emre";
  str = "altunbilek";

//final değişkenler bir kere set edilir.Tekrar yeni bir değer atanamaz.
  final String str2 = "emre";
  str2 = "altunbilek";

// Sabit değişkenlere yeni bir değer atanamaz.
  const String str3 = "emre";
  str3 = "altunbilek";
  */

  /*const sayi = 5;
  final sayi2 = 10;

  final tarih = DateTime.now();
  const tarih2 = DateTime.now(); */

  /* final liste = [1, 2, 3];
  final liste2 = [1, 2, 3];

  liste.add(4);
  liste2.add(8);

  //liste = [5, 6]; hatalı olur. */


  // cononicalized
  const liste = [1, 2];
  const liste2 = [1, 2];

  if (liste == liste2) {
    print("eşit");
  } else { 
    print("eşit değil");
    
  }
// final da list ler şit değilken const da listeler eşittir. Farklılık burdadır.
/* final da list.add() diyerek değerler ekleyebilirz ama const da bu mümkün değildir.

//list.add(6); */

}

