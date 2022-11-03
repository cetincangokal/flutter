//
import '../week4/class_extends.dart';

void main(List<String> args) {
  final user = _User('veli', age : 9);

  //yasi 18den küçük mü

  if (user.age is int) {
    if (user.age! < 18) {
      print('evet küçük');
      user.updateMoneyWithString('TR');
    } else {
      user.updateMoneyWithNumber(15);
    }
  }
  final _newType = user.moneyType is String ? (user.moneyType as String) : "";
  print(_newType + 'A');

  int money1 = 50;
  int money2 = 50;

  // banka sınıfından 2 kişinin parasını topla


  if (money1 == money2) {
    print('oke');
    
  }
  
  final moneyBank1 = bank(40, '12');
  final moneyBank2 = bank(30, '12');

  print(moneyBank1 == moneyBank2);
  final newResult = "a" + "a";

  // musteri banka sinfindan iki kisinin parasini  topayip soucu soylermisin

  print(moneyBank1 + moneyBank2);

  // benim bankma gelen musterlmiin idsi ayni onanlar ayni musteri olmaldir
  print(moneyBank1.toString());
  print(moneyBank1 == moneyBank2);

  // diger bankadan bir modul aldik bunu ekleyip musterinin parasini sorgularmisin

  // musteri adamin parasina 10tl ekle ekrana dondur, adamin idsini 1 artir sonrasinda ismini veli yap

  moneyBank1.money += 10;
  print(moneyBank1.money);

  moneyBank1
    ..money += 10
    ..updateName('veli')
    ;

  print(moneyBank1);
}

class _User {
  final String name;
  int? age;
  dynamic moneyType;
  _User(this.name, {this.age});

  void updateMoneyWithString(String data) {
    moneyType = data;
  }
  void updateMoneyWithNumber(int number) {
    moneyType = number;
  }
}

class bank with BankMixin{
  int money;
  final String id;
  String? name;
  bank(this.money, this.id);
  int operator +(bank newBank){
    return this.money + newBank.money;
  }

  @override
  String toString() {
    // TODO: implement toString
    return super.toString() + 'veli';
  }

  @override
  bool operator == (Object newBank){
    return newBank is bank && newBank.id == id;

  }

  @override
  int get hashCode => money.hashCode ^ id.hashCode;
  
  @override
  void sayBankHello() {
    calculateMoney(money);
    // TODO: implement sayBankHello
  }
  
  updateName(String s) {
    this.name = name;
  }
}

mixin BankMixin {
  void sayBankHello();
  void calculateMoney(int money) {
    print('money');
    
  }
}
