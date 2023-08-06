class Ogrenci{
  int id;
  int notDegeri;

  Ogrenci({this.id = 1, this.notDegeri = 1});
// ! isimlendirilimiş olarak parametre geçmek istiyorsak açık olmassı lazım. (_ olmaması gerek .) Null değerden kurtulmak için varsayılan değeri atadık.

  @override
  String toString() {
    return "ID : $id Not Değeri: $notDegeri";
  }
}