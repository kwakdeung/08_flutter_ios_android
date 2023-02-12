void main()
{
  // *** Nullable & Non-Nullable ***
  int num1 = 5;
  int? num2 = 2;

  // num1 =null;  // 에러 발생 : Non-Nullable
  num2 = null;    // ok : Nullable

  // String str1 = null;  // error : Non-Nullable
  String? str2 = null;    // ok : Nullable

  print("1========================================================");

  // *** Null Safety 규칙 ***

  // Non-Nullable 변수는 값 대입 없이 사용할 때 error
  // int a1; print(a1);
  int? a2; print(a2);

  // a2 변수는 Nullable. 선언과 동시에 초기값이 null이 대입되어 초기화된다.
  // a1 은 Non-Nullable. null 로 자동 초기화 할 수 없다.

  // var 타입에서의 Null Safety
  var a3 = 10;      // int 타입으로 유추. Non-Nullalbe 변수임으로 null 대입 불가
  var a4 = null;    // dynamic으로 유추
  var a5;           // dynamic으로 유추
  // var? a6 = null;  // error

  // var 로 타입 선언시 Nullable과 Non-Nullable로 자동 유추가 된다.
  // var 타입 뒤에는 ? 를 추가 할 수 없다.

  print("2========================================================");

  // *** Null Safyty Operator ***

  int num3 = 5;
  int? num4;

  // ! : null check operator - runtime error throw
  // 변수 뒤에 !을 추가하면 이 변수 값이 null 인 경우 runtime error 발생
  num4 = 10;    // 이 줄이 없으면 다음 줄 에러
  num3 = num4;  // 컴파일 전 체크
  num3 = num4!; // 실행 시 체크

  // ?. ?[ ] ?.. - null aware operator
  // String name;     // <-- 값이 대입되지 않고 사용되면 null일 수 있다.
  String? name;

  // Null 이 아닐 때 메서드 실행
  name = name?.toLowerCase();

  // Null 일 때
  int val2 = int.tryParse('n42') ?? -1;
  print('val2 = $val2');
}