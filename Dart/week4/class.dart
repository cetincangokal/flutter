void main(List<String> args) {

  /*

  List<int?> customersMoney = [100, null, 0];

  for (var item in customersMoney) {
    if (item != null) {
      if (item > 0) {
        print('Hoşgeldiniz');
      }else {
        print('Fakirsiniz malesef!!!');
      }
      
    }else {
      print('Gelin size hesap açalım');
      
    }
    
  }
  */

  print('--' * 100);
  
  user user1 = user('Ali', 1000, age : null, city : 'İstanbul');
  user user2 = user('ahmet', 2000, city : 'İstanbul');
  print(user1.name);

  if (user2.city == null) {
    print('Şehir yok');
    
  }else {
    if (user2.city == 'İstanbul') {
      print('Tebrikler kazandınız');
    }
  }


}

class user {

  String? name;
  int? money;
  int? age;
  String? city;

  user(String name, int money, {int? age, String? city}){
    this.name = name;
    this.money = money;
    this.age = age;
    this.city = city;
  }
}


// 3:37:00