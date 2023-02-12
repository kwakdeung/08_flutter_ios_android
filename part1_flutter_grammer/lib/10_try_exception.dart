void main() {
  int x = 12;
  int y = 0;
  int res1;
  double res2;

  // on은 exception 객체가 필요 없을 때
  // IntegerDivisionByZeroException, FormatException
  try {
    res1 = x ~/ y;
  }
  on IntegerDivisionByZeroException {
    print('Cannot divide by zero');
  }

  // catch는 exception 객체가 필요할 때
  try {
    res2 = x / y;
  }
  on IntegerDivisionByZeroException catch (e) {
    print(e);
  }

  // 그냥 자바처럼 사용하기
  try {
    res2 = x / y;
  }
  catch (e) {
    print(e);
  }

  // throw
  divide(x, y);
}
// Exception 객체를 throw
divide(int a, int b)
{
  if (b == 0) {
      throw new Exception('Cannot divide by zero');
    }
  return a / b;
}