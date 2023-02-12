void main()
{
  // *** Positional parameters ***

  // 파라미터를 옵션 처리하기
  something1();
  something1('홍길동');

  something2('해리포터');
  something2('멀린', 20);
  
  something3('전우치');
  something3('');

  // 필수 + 옵션
  something4('이순신');
  something4('강감찬',20);
}

// 파라미터를 옵션 처리
void something1([String? name]) {
  print('name : $name');
}

// 여러가지 파라미터를 처리하기 위해 오버로딩 할 필요가 없다.
void something2([String? name, int? age]) {
  print('name : $name age : $age');
}

// 필수 + 옵션
void something3(String name, [int? age]) {
  print('name : $name age : $age');
}

// 파라미터의 디폴트 값. ? 빠진다.
void something4(String name, [int age = 10]) {
  print('name : $name age : $age');
}