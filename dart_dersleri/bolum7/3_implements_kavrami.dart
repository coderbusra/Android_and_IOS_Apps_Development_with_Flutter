import 'dart:ffi';

/**
 * Dart dilinde interface kavramı yoktur, ama sınıfları implements anahtar kelimesi ile interfacemiş gibi kullanabiliriz.
 * Interfaceler sayesinde ortak özelliği olan ancak kalıtımsal olarak alakalı olmayan sınıfları bir çatı altında toplayabiliriz.
 * 
 * Interface olarak kullanılan sınıfların methodları bu sınıfları implemente eden sınıflar tarafından yapılmak zorunadır.
 * Interfaceler sayesindde dart dilinde olmayan çoklu kalıtım sağlanabilir. Bir sınıf birden fazla sınıfı implements diyerek gerçekleştirebilir.
 * 
 */

void main(List<String> args) {
}

abstract class Hayvan {
  void soyutOlmayanMetot(){
    //soyut olmayan metot = içeriği yazılmış, gövdesi var demek.
    print("Metotun tanımı var.");
  }
}

abstract class  Ucabilenler{
  void fly();
  void test(){
    print("test");
  } //uçma
  
}

abstract class Kosabilenler{
  void run(); //koşma

}

abstract class Havlayabilenler{
  void bark(); //havlama

}

class Kopek extends Hayvan implements Havlayabilenler, Kosabilenler {
  // Her köpek bir hayvandır ve bu köpek havlayabilir ve uçabilir.

  @override
  void bark() {
    // TODO: implement bark
  }

  @override
  void run() {
    // TODO: implement run
  }

}

class Kus extends Hayvan implements Ucabilenler {
  @override
  void fly(){
    // TODO: implents fly
  }
  
  @override
  void test() {
    // TODO: implement test
  }
}
class Insan implements Kosabilenler {
  @override
  void run() {
    // TODO: implement run
  }

}

