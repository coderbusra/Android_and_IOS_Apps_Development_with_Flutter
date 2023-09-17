/**
 * Dart varsayılan olarak hiç bir değişkene null değer atamasına izin vermez. Buna dart non-nullable tip denir. Bir değişken tanımlayıp uygun veriyi atamazsanız size uyarı verecektir. Bu uyarıda değişken tanımlayıp uygun veriyi atamazsınız size uyayı verecektir. Bu uyarıda değişkene ilk değeri atamanız istenecektir. Böylece program çalışırken hiçbir non-nullable bir değişken null değeri göstermez.(null sound)
 * 
 * Bunu istemiyorsanız eri tipinin sonuna ? işareti koyarsanız Böylece değişken null değer saklayabilir. Bunlarda aslında yeni bir veri tipidir. ? koyaraak Nullable type oluşturmuş olursunuz. 
 * 
 */

void void main(List<String> args) {
  // nullable
  int? a;
  a = null;
  print("a değişkenini değeri $a");
  print(a + 5);
}