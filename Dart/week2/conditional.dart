void main() {
  final int classDigree = 2;
  bool isSucsess = true;
  const int sucsessValueHigh = 2;
  const int sucsessValueMid = 1;
  const int sucsessValueLow = 0;




  switch(classDigree){
    case sucsessValueHigh:
      print('Başarılı');
      isSucsess = true;
    break;

    case sucsessValueMid:
      print('İdare eder');
      isSucsess = true;

    break;

    case sucsessValueLow:
      print('EH');
      isSucsess = true;

    break;
    
    default:
      print('Başarısız');      
      isSucsess = false;

    break;
  }

  print('Beyefendi çocuğunuzun sonucu $isSucsess');
}