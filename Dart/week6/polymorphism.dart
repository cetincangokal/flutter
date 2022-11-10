

void main(List<String> args) {
  IUser user = Turk();
  user.sayName();
  user = Eng();
  user.sayName();
}

abstract class IUser {
  final String name;

  IUser(this.name);
  void sayName();
}

class Turk implements IUser{
  @override
  String get name => 'Veli';

  @override
  void sayName() {
    print('Merhaba $name');
  }
}
class Eng implements IUser{
  @override
  String get name => 'Adam';

  @override
  void sayName() {
    print('Hello $name');
    print("let's meet our friends in oxford ");
    //print('let\'s meet our friends in oxford');

  }
}  

