import 'dart:async';

void main(List<String> args) {
  sayilariTopla();
  int fark = sayilariCikar(10, 3);
  
  print("fark : $fark ");
  
  print("Çarpım : " + sayilariCarp(12,6).toString());
  
  print("Büyük olan sayı :"+maxOlaniBul(4, 9).toString());

  print("Küçük olan sayı :"+minOlaniBul(14, 19).toString());
}

sayilariTopla(){
  int sayi1=10, sayi2=5;
  print("toplam : ${sayi1 + sayi2}");
}
int sayilariCikar(int s1,int s2){
  return (s1-s2);
}

// fonksiyonun kısaltılmış hali
int sayilariCarp(int s1, int s2) => s1*s2  ;

/* int maxOlaniBul(int s1, int s2){
  if(s1<s2){
    return s2;
  }else{
    return s1;
  }
} */

int maxOlaniBul(int s1, int s2) => s1<s2 ? s2 : s1; //if kısaltılmış hali
 
minOlaniBul(int s1,int s2) => (s1 < s2)? s1 : s2;

