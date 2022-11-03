void main(List<String> args) {
    final newProduct = Product.money;

    calculateMoney(Product.money ?? 0);
    productNAmeChange();
    calculateMoney(Product.money ?? 0);

    // user classını kullanarak product oluştur

    final user1 = User('Veli', 'a');
    final newProduct2 = Product(name: user1.product');


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
  Product({
    required this.name,
  });

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