void main() {
  final int userMoney = 100;
  controlUserMoney(userMoney, 0);
  int result = convertMoney(userMoney);
  print(result);
  final newResult = convertToStandartDolar(userMoney: 500, dolarIndex: 16);
  sayHello('Çetin');
  
}


void controlUserMoney(int money, int minimumValue) {
  if (money > 0) {
    print('Paanız var');
    
  }else {
    print('Paranız yok');
  }
  
  
}

int convertMoney(int userMoney) {
  return userMoney ~/ 13;
}
int convertToStandartDolar({required int userMoney, int dolarIndex = 14}){
  return userMoney ~/ dolarIndex;
}
String sayHello(String name) {
  return 'Hello $name';
}