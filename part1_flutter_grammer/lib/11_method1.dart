void main()
{
  something1('홍길동');

  something2('전우치');
  something2(30);

  // *** Named parameters ***

  // 파라미터를 옵션 처리하기
  something3();
  something3(name: '손오공');
  // 뒤의 파라미터만 이름을 주어 값을 전할 수 있다.
  something4(age: 20);

  something5('해리포터');
  something5('멀린', age: 20);

  something6('이순신');
  something6('강감찬', age: 20);

  something7('권율', age : 30);
}

void something1(String name) {
  print(name);
}

// 파라미터 타입을 생략하면 dynamic 타입이 됨 - 우리가 쓰는 것은 생략하지 말자
void something2(name) {
  print(name);
}

// 파라미터 옵션 처리
void something3({String? name}) {
  print('name : $name');
}

// 여러가지 파라미터를 처리하기 위해 오버로딩할 필요가 없다.
void something4({String? name, int? age}) {
  print('name : $name age : $age');
}

// 필수 + 옵션, 보통은 필수도 옵션으로 사용한다. :을 사용하기 위해
void something5(String name, {int? age}) {
  print('name : $name age : $age');
}

// 파라미터의 디폴트 값. ? 빠진다.
void something6(String name, {int age = 10}) {
  print('name : $name age : $age');
}

// 반드시 필요한 파라미터라면... 이전 방식 @required
void something7(String name, {required int age}) {
  print('name : $name age: $age');
}
