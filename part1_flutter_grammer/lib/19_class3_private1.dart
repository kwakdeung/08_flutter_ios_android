import 'package:part1_grammer/19_class3_private2.dart';

class Unit
{
  // 변수명 그냥 쓰면 public, _로 시작하면 private(암묵적)
  late String _name;
  late int age;

  // 생성자 간단하게 사용하기
  // 어차피 연결할 거... 파라미터 부분에서...
  Unit (this._name, this.age);
}

void main()
{
  var unit1 = Unit("마린", 25);
  print(unit1._name); // private 이지만 에러 없이 출력됨
  print(unit1.age);

  var unit2 = Unit2("메딕", 20);
  // print(unit2._name); // private 적용됨
  // print(unit2._age); // private 적용됨

  /*
   dart에서는 하나의 파일이 하나의 libarary이다.
   그래서 private으로 할 경우 해당 파일에만 or 해당 라이브러리에만 접근이 가능.
   외부파일에서는 접근이 불가능하다.
   */
}