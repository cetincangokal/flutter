void main(List<String> args) {
  if ('Ali'.isAdmin()) {
    print('object');
  }

  String? name;
  name.isAdmin();
}

extension StringUserCheckExtension on String? {
  bool isAdmin(){
    return (this ?? '').toLowerCase() == 'admin'.toLowerCase();
  }
}