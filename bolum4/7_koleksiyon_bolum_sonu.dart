/*  SORULAR  */
import 'dart:ffi';
import 'dart:io';
import 'dart:math';

/**
 * 1)- Şehirleri tutan bir liste oluşturun, 4 tane il ekleyip sırasıyla ekrana yazdırın.
 * 2)- Keyleri string, değerleri dynamic olan bir map oluşturun. Bu map yapısında bilgisayarınızın işlemci çekirdek sayısını, ram miktarını ve ssd olup olmadığı bilgisinin tutun ve ekrana yazdırın.
 * 3)-Her bir elemanında keyleri string , value'leri dynamic map olan bir liste oluşturun. Bu listedeki her bir eleman il adını, ilçe sayısını, plaka kodunu tutsun. Sonrasında da bu listeyi okunaklı bir şekilde yazdırın
 Örnek listenin .elemanında bulunan il Ankara, plaka kodu: 06 sayısı:10 (değerler rastgele olabilir.)
 * 4)- 5 elemanlı iki farklı liste oluşturun, Elemanlar 0-50'ye rastgele şekilde oluşturulsun Bu elemanları tek bir listeye aktarın. Oluşan son listenin elemanlarının karelerini tutan set yapısı oluşturup ekrana yazdırın.
 * 5)- Kullanıcıdan aldığınız integer pozitif sayılar bir listede tutun, kullanıcı 0 değerini girdiğinde girilen sayıların ortalamasını ekrana yazdırın.
 */

void main(List<String> args) {
// Cevap 1):
print("***CEVAP 1 BAŞI***");
  final sehirler = List<String>.filled(4, '');
  sehirler[0]="Ankara";
  sehirler[1]="Konya";
  sehirler[2]="İstanbul";
  sehirler[3]="Kahramanmaraş";
  
  print(sehirler);
  print("***");
  for (int i = 0; i < sehirler.length; i++) {
    print(sehirler[i]);
    }
print("***CEVAP 1 SONU***");

// Cevap 2):
print("***CEVAP 2 BAŞI***");
  Map<String, dynamic> bilgi = {};
  bilgi["cekirdek_sayisi :"] = 8;
  bilgi["ram_miktari :"] = 16;
  bilgi["ssd_var_mi"] = true;

  print(" Bilgisayar Bilgileri");
  for (var oankiEntry in bilgi.entries) {
    print("${oankiEntry.key} : ${oankiEntry.value}");
  }
print("***CEVAP 2 SONU***");

// Cevap 3) :
print("***CEVAP 3 BAŞI***");
  List<Map<String, dynamic>> iller = <Map<String, dynamic>>[];
  Map<String, dynamic> eklenecekSehir1 = Map<String, dynamic>();
  eklenecekSehir1['il_adi'] = 'Ankara';
  eklenecekSehir1['ilce_sayisi'] = 10;
  eklenecekSehir1['plaka_kodu'] = 6;
  Map<String, dynamic> eklenecekSehir2 = <String, dynamic>{};
  eklenecekSehir2['il_adi'] = 'Bursa';
  eklenecekSehir2['ilce_sayisi'] = 6;
  eklenecekSehir2['plaka_kodu'] = 16;
  var eklenecekSehir3 = <String, dynamic>{};
  eklenecekSehir3['il_adi'] = 'İstanbul';
  eklenecekSehir3['ilce_sayisi'] = 16;
  eklenecekSehir3['plaka_kodu'] = 34;

  iller.add(eklenecekSehir1);
  iller.add(eklenecekSehir2);
  iller.add(eklenecekSehir3);

  iller.add({
    'il_adi' : 'İzmir',
    'ilce_sayisi' : 9,
    'plaka_kodu' : 35, 
  });
  print(iller[3]);

  for(int i=0; i<iller.length ; i++){
    var oankiSehirMapYapisi = iller[i];
    print(
      "Listenin ${i+1}.elemanında bulunan sehir adı: ${oankiSehirMapYapisi['il_adi']} ilce sayisi : ${oankiSehirMapYapisi['ilce_sayisi']} plaka kodu: ${oankiSehirMapYapisi['plaka_kodu']} "
    );
  }
print("***CEVAP 3 SONU***");

//CEVAP 4) :
print("***CEVAP 4 BAŞI***");
final liste1 = List<int>.filled(5, 0);
var liste2 = List<int>.filled(5, 0);
List<int> sonListe = <int>[];
var sonSetYapisi = <int>{};

for (int i = 0; i<5; i++) {
  liste1[i] = Random().nextInt(50);
  liste2[i] = Random().nextInt(50);
}
print(liste1);
print(liste2);

sonListe = [...liste1, ...liste2];
print(sonListe);

for (int oankisayi in sonListe) {
  sonSetYapisi.add(oankisayi*oankisayi);
}
print(sonListe);
print(sonSetYapisi);

print("***CEVAP 4 SONU***");

//CEVAP 5) :
print("***CEVAP 5 BAŞI***");

  int girilenNot = 0;
  List<int> girilenNotlar = <int>[];
// List<int> girilenNotlar2 = List.empty(growable: true); ikiside aynı.
  do {
    print("Lütfen notunuzu giriniz , çıkış için -1");
    girilenNot = int.parse(stdin.readLineSync()!);
    if (girilenNot != -1) {
      girilenNotlar.add(girilenNot);
    }
   } while (girilenNot != -1);

    print("Kaç tane not girildi ${girilenNotlar.length}");
    double ortalama = listeninOrtalamasiniBul(girilenNotlar);
    print("Notların ortalaması $ortalama");
  }
  

double listeninOrtalamasiniBul(List<int> liste) {
  int toplam = 0;
  for (int i=0; i < liste.length; i++) {
    toplam = toplam + liste[i];
  }
  return toplam / liste.length;
}
