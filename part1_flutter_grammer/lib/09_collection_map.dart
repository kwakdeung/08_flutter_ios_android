void main()
{
  // Map : key, value 로 이루어진 데이터, 중복X, 목적:값을 빠르게 찾기

  var map1 = {
    'key1' : "홍길동",
    'key2' : 2,
    'key3' : true
  };
  print(map1);

  Map<String, int> map2 = Map();
  map2['홍길동'] = 20;
  map2['전우치'] = 25;
  map2['손오공'] = 30;
  print(map2);

  map2['멀린'] = 35;  // 추가
  map2['홍길동'] = 21; // 수정
  print(map2);

  map2.remove('홍길동');
  print(map2);

  //*** 값 빠르게 찾아 오는 것이 목적 ***
  int? val1 = map2['홍길동'];    // 찾는 값이 없으면 null 반환
  print(val1);
  int val2 = map2['홍길동'] ?? -1;
  print(val2);
  var val3 = map2['홍길동'];
  print(val3);
  val3 = 1;     // null이 입력되면 아직 타입이 정해진게 아니다. 입력 가능.
  print(val3);

  // 해당 map이 해당 key갑을 가지고 있는지 점검
  var bCheck = map2.containsKey('멀린');
  if(bCheck) {
    print("멀린은 존재하는 값입니다.");
  }

  // 반복
  print("==============================================");  // 기존 사용방식
  for (var key in map2.keys) {
    print('$key : ${map2[key]}');
  }

  print("==============================================");  // entries는 메서드이기에 {}
  for (var e in map2.entries) {
    print("${e.key} : ${e.value}");
  }
  print("==============================================");

  // 스프레드 연산자(...)
  var map3 = {
    ...map1,
    'key4': '전우치'
  };
  print(map3);

}