void main(List<String> args) {
  var listem = <String>[];
  var myMap = <String, dynamic>{'yas' : 34};
  var mySet = <String> {'busra'};

  var tekSayilar = [1, 3, 5];
  var ciftSayilar = [2, 4, 6];

//Spreads operator:
  var sonListe = [...tekSayilar,...ciftSayilar];
  /* sonListe.addAll(tekSayilar);
  sonListe.addAll(ciftSayilar); */

  var map1 = {'ad': 'busra'};
  var map2 = {'yas':20};
  var sonMap = {...map1, ...map2};

  var set1 = {'büşü'};
  var set2 = {'fatma'};
  var set3 = {'ahmet'};
  var set4 = {'irfan'};

  var sonSetYapisi = {...set1, ...set2, ...set3, ...set4};

  print(sonListe);
  print(sonMap);
  print(sonSetYapisi);
}