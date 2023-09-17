/*  Daha önceden yazılmış kod parçacıkları tekrar tekrar yazılmadan başka sınıflarda kullanılabilir. if, else, switch gibi kontrol ifadelerinin olduğu sınıflar kötü tasarım örneklerdir. Bunun yerine kalıtım tercih edilmelidir.

Method overriding : üst sınıftaki değişken veya methodların alt sınıf tarafından değiştirilmesidir.
*/

import 'dart:ffi';

void main(List<String> args) {
  User user1 = User();
  user1.email;
  user1.password;
  user1.girisYap();

  NormalUser normal1 = NormalUser();
  normal1.davetEt();
  normal1.email;
  normal1.password;
  normal1.girisYap();

  SadeceOkuyabilenNormalUser user = SadeceOkuyabilenNormalUser();
  user.davetEt();
  user.girisYap();
  user.adiniSoyle();

  AdminUser admin = AdminUser();
  admin.toplamKullaniciSayisiniGoster();
  admin.email;
  admin.password;

  var user2=NormalUser();
  SadeceOkuyabilenNormalUser user3 = SadeceOkuyabilenNormalUser();
  AdminUser user4 = AdminUser();

  User user5 = AdminUser();
  User user6 = SadeceOkuyabilenNormalUser(); //upcastig (yukarı cevrim)

  List<User> tumUserlar = [];
  tumUserlar.add(user1);
  tumUserlar.add(user2);
  tumUserlar.add(user3);

  test(user1);
  test(user2);
  test(user3);

}

void test(User kullanci) {
  kullanci.girisYap(); // Polimorfizm çok biçimlilik.
}

class User {
  String email = "";
  String password = "";

  void girisYap() {
    print("Parent user giriş yaptı");
  }
}

class NormalUser extends User {
  void davetEt() {
    print("Normal user arkadaşlarını davet etti");
  }
  
  @override
  void girisYap() {
    print("Normal User giriş yaptı");
  }
}

class SadeceOkuyabilenNormalUser extends NormalUser {
  void adiniSoyle() {
    print("Ben sadece okuyabilirim");
  }
  @override
  void girisYap() {
    print("SadeceOkuyabilenNormal user giriş yaptı");
  }
}

class AdminUser extends User {
  void toplamKullaniciSayisiniGoster() {
    print("Toplam user sayisi 20");
  }
  @override
  void girisYap() {
    print("Admin user giriş yaptı.");

  }
}