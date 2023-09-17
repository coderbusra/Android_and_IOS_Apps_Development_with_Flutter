import 'dart:math';

void main(List<String> args) {
  try {
    double deger = kareKokunuAl(-20);
    print("Değer ${deger.toStringAsFixed(2)}"); //virgülden sonra 2 rakam göster.
  } catch(e){
    print(e);
  }
}
  
double kareKokunuAl(int i) {
  
  try{
  if (i < 0) {
    throw FormatException("Sayi negatif olamaz");
    print("bu kısım çalışmaz ve aşağıdaki kodların önemi kalmaz throw ile hata fırlatıldı (double deger = kareKokunuAl(-20);)");
  
  } else
    return sqrt(i);  
  } on FormatException catch (e){
    print("Hata mesajı : ${e.message} metot içindeyim ");
    print("Hata kaynağı : ${e.source}"); //null değer vermemsinin nedeni herhangi bir hatanın kaynağının olmaması. Yazmasakta olur.
  
  } finally {
    return 0;
  }
}