class Unit {
  move() { print("이동1"); }
  attack() { print("공격1"); }
  heal() {print("치료1"); }
}

class Marine extends Unit {
  // 기능의 변경
  move() {print("이동2"); }
  // 기능의 추가
  attack() {
    super.heal();
    print("치료2");
  }

}

void main()
{
  var unit = Marine();
  unit.move();
  unit.attack();
  unit.heal();
}