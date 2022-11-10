void main(List<String> args) async{
  print('a');

  Stream<int> bankMoneys = Stream.empty();
  bankMoneys = dataAddBankMoney(3, 10000);
  bankMoneys.listen((event){
    print(event);
  });
  //5 sn bekle sonra gel ve müşteri alma
  //await Future.forEach([1,2,3,4,5], (element) async{
  //await Future.delayed(Duration(seconds: 2));
  //print('islem bitti $element');
  //});
  //await Future.delayed(Duration(seconds: 2));
  print('ab');

  print('Heloo');
  Future.delayed(Duration(seconds: 1)).whenComplete(() {
    print('Hello5');
  });
  print('hellö2');
  Future.delayed(Duration(seconds: 2)).whenComplete(() {
    print('Hello10');
  });


}

Stream<int> dataAddBankMoney(int retryCount, int money) async* {
  int _localRetry = 0;
  await Future.delayed(Duration(seconds: 1));

  while (_localRetry < retryCount) {
    _localRetry++;
    yield money +=5;
  }
  
}


// bir servise istek at cevap sonra gelecek
// matematik zaman alacak

// sync