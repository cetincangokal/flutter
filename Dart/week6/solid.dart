import 'dart:indexed_db';

void main(List<String> args) {
  IDataBase dataBase = SQL();

  dataBase = mongo();
  dataBase.write();
  
}

class UserManager {
  String name;
  UserManager({
    required this.name,
  });
  
  void changeUserName (String name){
    this.name = name;
  }

  
}

class UserLocalization {
  final UserManager manager;
  UserLocalization({
    required this.manager,
  });

  void updateNameAndLocalization() {
    manager.changeUserName('Ahmet');
    changeLocalization();
  }
  void changeLocalization() {
    print('object');
  }
  
}

//


class Product {
  final String name;
  final int money;

  Product(this.name, this.money);
 
}

class ProductCategories extends Product{
  ProductCategories(super.name, super.money);
  final String category = ';1';
}

// 
abstract class IDataBase {
  void write();
}

class SQL extends IDataBase{
  @override
  void write() {
    // TODO: implement write
  }

}

class mongo extends IDataBase{
  @override
  void write() {
    // TODO: implement write
  }
}
//

abstract class IUserOperation with IUserLocation, IUserLanguage{
  void write();
  void read();
  void delete();
}

abstract class IUserLocation{
  void locationChange();
}
abstract class IUserLanguage{
  void language();
}

class UserLocation extends IUserLocation {
  @override
  void locationChange() {
    // TODO: implement locationChange
  }

}
//

abstract class ICameraManager {
  void readQR();
}

class DeviceCameraManager extends ICameraManager {
  final IphoneCameraRead iphoneCameraRead;

  DeviceCameraManager(this.iphoneCameraRead);
  @override
  void readQR() {
    // TODO: implement readQR
  }

}

class IphoneCameraRead extends ICameraManager {
  @override
  void readQR() {
    // TODO: implement readQR
  }

}
