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
  final moneyBank1 = bank(50);
  final moneyNank2 = bank(50);
  if (moneyBank1 == moneyNank2) {
    print("ok");
  }
  
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

class bank {
  final int money;
  bank(this.money);
  int operator +(bank newBank){
    return this.money + newBank.money;
  }
}
