void main() {
  List<int> customersMoney = [100, 30, 40, 60];
  for (var i = 0; i < customersMoney.length; i++) {
    if (customersMoney[i] > 35) {
      print('Sİze kredi verebiliriz.');
      
    }else {
      print('Bye');
    }
  }
  print('--------------');
  for (var i = customersMoney.length - 1; i >= 0; i--) {
    if (customersMoney[i] > 35) {
      print('Sİze kredi verebiliriz.');
      
    }else {
      print('Bye');
    }
  }
  print('--------------');

  List <String> name = ['Ali', 'Mehmet', 'Çetin'];
  print(name.contains('Çetin'));
  
  
}