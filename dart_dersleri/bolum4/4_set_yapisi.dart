/**
 * Bir diğer koleksiyon yapısı set yapısıdır.ingilizcede küme anlamına gelir.
 * List den en önemli elemanları sıralı olarak tutmaz. Bu durumda list lerde olduğu gibi indexleri kullanamayız.
 * Bir diğer fark ise bir elemandan sadece bir tane olur yani her bir eleman diğerinden farklıdır.
 * İndex olmadan elemanları kontrol etmek için contans metodu kullanılabilir.Onun dışında listedeki methodlar set için geçerlidir.
 * 
 */

void main(List<String> args) {
  Set<String> isimler={};
  isimler.add("emre");
  isimler.add("hasan");
  isimler.add("ali");
  isimler.add("emre");
  isimler.add("emre");
  isimler.add("ayşe");

  if(isimler.contains("emre")){
    print(isimler);
  } //emre isminde bir veri var mı? Varsa yazdır.

  bool sonuc = isimler.remove("emre");
  print("sonuc: $sonuc");

  for(String s1 in isimler){
    print("İsim : $s1");
  }

  // sadece farklı elemanları gösterir çokluğu önemli değil

  Set<int> numaralar = Set.from([1,2,2,3,3,3,3,4,4,5,6,6]);
  List<int> ciftSayilar = [0,2,4,6,8,10,8,6,4,2,0];


  for (int s1 in numaralar) {
    print("no : $s1");
    
  //isimler.addAll(elements) farkli bir listeyi set yapısına aktarmak için kullanılır.
  }
  numaralar.clear();
  numaralar.addAll(ciftSayilar);
  for (int s1 in numaralar){
    print("add alldan sonra no : $s1");
  }





}

