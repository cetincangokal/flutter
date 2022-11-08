import '../week4/model/user_2_model.dart';
import 'model/product_config_model.dart';

void main(List<String> args) {
    final newProduct = Product.money;

    calculateMoney(Product.money ?? 0);
    productNAmeChange();
    calculateMoney(Product.money ?? 0);

    // user classını kullanarak product oluştur

    final user1 = User('Veli', 'a');
    final User2 = User('AHmet', 'VB');
    final newProduct2 = Product(user1.product);
    final newProduct3 = Product.fromUser(User2);


    ProductConfig.instance.apiKey;


}
void calculateMoney(int money) {
  if (money > 5) {
    print('5 tl ekledik');
    Product.incrementMoney(5);
    print(Product.money);
  }
}

void productNAmeChange() {
  Product.money = null;
}

class Product {

  static int? money = 10;
  String name;


  Product(this.name);
  Product.Veli([this.name = 'Veli']);

  factory Product.fromUser(User user){
    return Product(user.name);
  }

  static const companyName = ' vbBank';

  static void incrementMoney(int newMoney) {
    if (money != null) {
      money = money! + newMoney;
      
    }
    
    
  }
}

class User {
  final String name;
  final String product; 

  User(this.name, this.product);

}

