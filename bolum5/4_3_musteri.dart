class Musteri {
  int? _musteriNo;

/*   Musteri(int musteriNo){
    this.musteriNo = musteriNo;
  } */

  //Musteri(this._musteriNo);

  Musteri(int _musteriNo){
    _musteriNoKontrol(_musteriNo);
  }

  String get musteriNoSoyle {
    return "Musteri no : $_musteriNo";
  }

  String get musteriNoSoyle2 => "Müşteri no : $_musteriNo";

  void set musteriNoAta(int no){
    if(no > 300){
      _musteriNo = no;

    }else 
     return;
  }

  void _musteriNoKontrol(int no){
    if(no > 300){
      _musteriNo = no;

    }else 
     return;
  }


  void bilgileriYazdir(){
    print("Müşteri oluşturuldu müsteri no: $_musteriNo");
  }

}
