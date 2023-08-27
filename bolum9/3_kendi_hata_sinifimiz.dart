void main(List<String> args) {
  try {
    Ogrenci emre = Ogrenci(-5);
    print(emre.yas);
  } on AgeException catch (e) {
    print(e.mesaj);
  } finally {
    print("program bitti");

    try {
      Ogrenci emre = Ogrenci(-5);
      print(emre.yas);
    } catch (e) {
      print(e);
    }
  
  
  } 

  
}

class AgeException implements Exception {
  String mesaj = "Age Exception";

  AgeException({mesaj});

  @override
  String toString() {
    return "Hatanın tostring metotu calıştı";
  }

}

class Ogrenci {
  int yas = 0;

  Ogrenci(int yas) {
    if (yas < 0) {
      throw AgeException(mesaj: 'AgeExpection - Yaş negatif olamaz');
    } else
      this.yas = yas;
  }
}