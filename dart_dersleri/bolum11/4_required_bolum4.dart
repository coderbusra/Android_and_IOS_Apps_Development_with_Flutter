/**
 * Dartdaki isimlendirilmiiş parametreler varsayılan olarak opsiyoneldir, tanımlanması kullanıcıya bağlıdır. Bu yüzden kullanıcı tarafından atanmazlarsa null değer alırlar ki kaabul edilmez. Bu yüzden parametrelerin veri tiplerini tanımlarken String?, int? gibi nullable tiplerle belirtmeliyiz.
 * 
 * Bunun dışında tüm parametrelere varsayılan değerler atanarak da sorun cözülebilir.
 * 
 * Son çözğm ise required kullanarak bu parametrelerin mutlaka girilmesi sağlanabilir.
 */

int ucSayiyiTopla({required int ilk, required int ikinci, required int ucuncu}) {
  return ilk+ ikinci+ ucuncu;
}

void main(List<String> args) {
  final toplam = ucSayiyiTopla(ilk: 1, ikinci: 2, ucuncu: 5);
  final toplam2 = ucSayiyiTopla(ilk: 1, ikinci: 2, ucuncu: 5);
  final toplam3 = ucSayiyiTopla(ilk: 1, ikinci: 2, ucuncu: 3);
}