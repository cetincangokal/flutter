import 'model/user_model.dart';

void main(List<String> args) {
  final userNormal = User('Ahmet', 15);
  final userBank = BankUser('Mehmet', 25, 123);
  final userSpecial = SpecialUser('Semih', 35, 432, 500);
  userNormal.sayMoneyWithCompanyName();
  print(userSpecial.calculateMoney());
  print(userSpecial.money);
}


abstract class IUser {
  final String name;
  final int money;

  IUser(this.name, this.money);
  void sayMoneyWithCompanyName() {
      print('Ahmet - $money paranız vardır');
      
    }
}

class User extends IUser{
    final String name;
    final int money;

    User(this.name, this.money) : super(name, money);

    
}

class BankUser extends IUser{
  
  final int bankingCode;

  BankUser(String name, int money, this.bankingCode) : super(name,money);

  
  
}

class SpecialUser extends IUser{
  
  final int bankingCode;
  late final int _discount;

  SpecialUser(String name, int money, this.bankingCode, int discount) : super(name, money){
    _discount = discount;
  }
  
  // indirimli fiayt
  int calculateMoney(){
     return money - (money ~/ _discount);
  }
}

