/**
 * List ikiye ayrılır
 *  1-Sabit uzunluklu
 *  2-Büyüyen listeler
 * 
 * Diğer dillerde dizi olarak bilinen yapılar dart dilinde sabit uzunluklu liste olarak bilinir.
 * final numaralar = List.filled(10,0); // 10 eleman içeren sabit uzunluklu liste yani dizi.
 * Index numaraları 0'dan başlar. yani listenin ilk elemanına erişmek için 0.indexine bakılır. numaralar[0] diyerek..
 */
void main(List<String> args) {
  final sayilar = List<int>.filled(5, 2, growable: true); // growable : büyüyüp küçülememesi durumu .
  sayilar[0]=4;
  sayilar[1]=1;
  sayilar[2]=9;
  
  print(sayilar);
  print(sayilar.length);
  print(sayilar[3]);
  print(sayilar[1]);

  final isimler= List<String>.filled(2, "");
  isimler[0]=8.toString();
  isimler[1]="Büşü";
  print(isimler);

  final karisik= List<dynamic>.filled(5, 0);
  karisik[0]= "büşbüş";
  karisik[1]= 5;
  karisik[4]= false;
  print(karisik);

  // LİSTE ELEMANLARINI GEZMEK,
  for (int i=0; i< sayilar.length; i++){
  sayilar[i] +=5;
  print(sayilar[i]);
  }
  print("********************");
  for (int oankiElaman in sayilar){
    print(oankiElaman);
  }
  

}