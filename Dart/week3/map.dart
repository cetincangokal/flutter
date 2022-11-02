void main(List<String> args) {
  /*Map<String,int> users = {
    'a':20,'Mehmet':35

  };
  //print('a nın parası ${users['a']}');

  for (var item in users.keys) {
    //print('${item} - ${users[item]}');
    
  //}
  for (var i = 0; i < users.length; i++) {
    print('${users.keys.elementAt(i)} - ${users.values.elementAt(i)}');
    
  }
  */
  Map<String, List<int>> vbBank = {
    'Ahmet' : [100,200,300],
    'Mehmet': [30,50],
    'Veli' : [30]
  };

  for (var name in vbBank.keys){
    for (var money in vbBank[name]!) {
      if (money > 150) {
          print('Kredin hazır ${vbBank[name]}');
          return;
      }
      
    }
  }


}  