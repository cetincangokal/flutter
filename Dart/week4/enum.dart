void main(List<String> args) {
  final customerMouse = Mouses.a4;
  print(customerMouse.index);
  print(customerMouse.name);
  if (customerMouse == Mouses.a4) {}
  if (customerMouse.name == 'a4') {}
  if(customerMouse.ischeckName('a4')){
    print('aa');
  }
  switch (customerMouse) {
    
    case Mouses.magic:
      // TODO: Handle this case.
      break;
    case Mouses.apple:
      // TODO: Handle this case.
      break;
    case Mouses.logitech:
      // TODO: Handle this case.
      break;
    case Mouses.a4:
      // TODO: Handle this case.
      break;
  }
}

enum Mouses { 
  magic,
  apple,
  logitech,
  a4,
}

extension MousesSelectedExtension on Mouses {
  bool ischeckName(String name){
    return this.name == name;
  }
}