void main(List<String> args) {
Veritabani db = FirebaseDB();
/* bu satırda yapılan
Veritabani db = OracleDB(); 
etkilenmeyecektir eğer Veritabanş sınıflaması yerine Firebase ya da Oracle yazsaydık büyük karışıklıklara sebebiyet verecekti. */


db.userDelete();
db.userSave();

userGuncelle(db);


}

void userGuncelle(Veritabani veritabani) {
  veritabani.userUpdate();

}
// soyut nesnelerle çalışmak genelde iyidir gerçek somut nesneler değişsede sıkıntı yaşamayız.
abstract class Veritabani{
  void userSave();
  void userUpdate();
  void userDelete();

  void userGuncelle();
}

class OravleDb extends Veritabani {
  @override
  void userDelete() {
    print("oracle dbden user silindi.");
  }

  @override
  void userSave() {
    print("oracle dbye user kaydedildi.");
  }

  @override
  void userUpdate() {
    print("oracle dbdeki user güncellendi");
  }
  
  @override
  void userGuncelle() {
    print("firebase dbdeki user güncelle");
  }
}

class FirebaseDB extends Veritabani {
  @override
  void userDelete() {
    print("firebase dbden user silindi.");
  }

  @override
  void userSave() {
    print("firebase dbye user kaydedildi.");
  }

  @override
  void userUpdate() {
    print("firebase dbdeki user güncellendi");
  }
  
  @override
  void userGuncelle() {
    print("firebase dbdeki user güncelle");
  }
}