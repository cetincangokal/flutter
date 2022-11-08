void main(List<String> args) {
  final model = carModel(category: carModels.bmw, name: 'bmw x5', money: 1000000, isSecondHand: false );
  final carItems = [
    carModel(category: carModels.bmw, name: 'bmw x5', money: 1000000, isSecondHand: false),
    carModel(category: carModels.yamaha, name: 'yamaha xsr600', money: 80000, isSecondHand: true),
    carModel(category: carModels.toyota, name: 'corola', money: 500000, isSecondHand: true),
    carModel(category: carModels.bmw, name: 'bmw r nineT', money: 200000, isSecondHand: false),
    carModel(category: carModels.yamaha, name: 'yamaha r5', money: 2000, isSecondHand: false)


  ];


  final resultCount = carItems.where((element) => element.isSecondHand == true).length;
  print(resultCount);

  final newCar = carModel(category: carModels.bmw, name: 'bmw x5', money: 1000000, isSecondHand: false);

  final isHavecar = carItems.any((element) => element.name == newCar.name);
  if (isHavecar == true) {
    print('Bu arabadan var');
  }

  final isHavecar2 = carItems.contains(newCar);
  if (isHavecar2) {
    print('Patron yok alalım');    
  }


 // benim bir arabalar sınıfım olacak arabaların modeli ismi parası olacak şehri olmayacak ikinci el durumu müşteri söylemezse her ürün ikinci el kabul edilecek
 //
 
}

class carModel {
  final carModels category;
  final String name;
  final double money;
  String? city;
  bool isSecondHand;
  carModel({
    required this.category,
    required this.name,
    required this.money,
    this.city,
    this.isSecondHand = true,
  });
}


enum carModels { bmw, yamaha, toyota}