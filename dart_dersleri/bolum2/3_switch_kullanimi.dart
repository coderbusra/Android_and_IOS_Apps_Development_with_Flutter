/**
 * switch: ard arda if-else kullanmak yerine genellikle switch yapısı tercih edilir
 * her bir case'den sonra break denilerek switch yapısında cıkılmalıdır.
 * switch kullanırken sadece int ve string veri türleri kullanılır , boolean veya double kullanılmaz.
 */
main(List<String> args) {
  String notDegeri = "BA" ;

  switch (notDegeri) {
    case "AA":
      print("Notunuz 90-100 aralığındadır");
      break;

    case "BA":
      print("Notunuz 80-90 aralığındadır");
      break;

    case "BB":
      print("Notunuz 70-80 aralığındadır");
      break;
    
    case " CB":
      print("Notunuz 60-70 aralığındadır");
      break;
    
    case "CC":
      print("Notunuz 50-60 aralığındadır");
      break;
    
    case "FF":
      print("Notunuz 50'den düşük, çok çalışmanız gerekiyor.");
      break;
    
    default:
      {
        print("Hatalı değer girildi");
      }
  }
  
  int yas=22;
  switch(yas){
    case 18:
    print("yasınız 18");
    break;

    case 22:
    print("yasınız 22");
    break;

    default : {
      print("Bilinmeyen değer");
  }
    }

    int sayi = 25;
    int bolum = (sayi / 10).toInt();

    switch(bolum){
      case 3:
      print("Sayi 30 dan büyüktür");
      break;

      case 2:
      print("Sayi 20 den büyüktür");
      break;

      case 1:
      print("Sayi 10 dan büyüktür");
      break;
      
      case 0:
      print("Sayi 10 dan küçüktür");
      break;


    }
  }