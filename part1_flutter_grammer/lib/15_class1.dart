class Unit
{
  // ? 로 널 가능으로 처리 할 수 도 있지만
  // 나중에 초기화된다는 것을 명시해 줌
  late String name;
  late int age;
  Unit (String name, int age)
  {
    this.name = name;
    this.age = age;
  }
}

void main()
{
  // 디폴트 생성자가 없어서 에러 발생
  // var Unit1 = new Unit();

  // 자바와 같은 방식
  var unit2 = new Unit("마린", 20);

  // 보통은 new가 옵션이라 생략
  var unit3 = Unit("메딕", 25);
}