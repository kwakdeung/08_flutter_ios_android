void main()
{
  // ### 정수, 실수 간 변환 ###
  int num1 = 10;
  double num2 = num1.toDouble();
  num1 = num2.toInt();

  // ### 문자를 숫자로 변환 ###

  // 실패 시 Exception
  int intVal = int.parse('10');
  double doubleVal = double.parse('10.1');

  try {
    var num3 = int.parse('n42');
    print(num3);
  } on FormatException catch(e) {
    print('Format error!');
    print(e);
  }

  // 실패 시 null
  int? intVal2 = int.tryParse('10');
  double? doubleVal2 = double.tryParse('10.1');

  int val1 = int.tryParse('n42') ?? -1;
  print('val1 = $val1');
  var val2 = int.tryParse('n42');
  print('val2 = $val2');


  // ## 진법 변환 ###

  var n_16 = int.parse('FF', radix: 16);  // 255
  print('n_16 : FF -> $n_16');
  var n_8 = int.parse('10', radix: 8);    // 8
  print('n_8 : 10 -> $n_8');
  var n_2 = int.parse('1001', radix: 2);  // 9
  print('n_2 : 1001 -> $n_2');

  int baseNum = 10;
  var val3 = baseNum.toRadixString(16);
  print('10 hex --> 0b$val3');
  var val4 = baseNum.toRadixString(2);
  print('10 hex --> ob$val4');


}