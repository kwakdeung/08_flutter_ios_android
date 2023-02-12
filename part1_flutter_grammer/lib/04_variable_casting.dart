void main()
{
  int num1 = 1;
  print('num1 : $num1');

  double num2 = 2.0;
  print('num2-1 : $num2');

  double num3 = 2.1;
  print('num2-2 : $num3');

  // num3 = num1;           // 오토캐스팅 안된다.
  num3 = num1.toDouble();   // 명시적 형변환 필요
  print('num3 : $num3');

  num2 = 2.6;
  num1 = num2.toInt();     // 소수점 이하 절사
  print('num1 : $num1');

  // 플러터에서 사용되는 변수는 모두가 객체이다.
}