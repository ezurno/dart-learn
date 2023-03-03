void main() {
  List<int> number = [1, 2, 3, 4, 5];
  // List<> 로 타입을 명시해 해당 타입의 배열만 만드는 방법
  number.add(1);
  print(number);

  var list = [1, false, 3, 4, "sdf"];
  // var type으로 배열을 만들면 type 상관없이 들어감

  var trigger = true;
  List<int> collection = [
    1,
    2,
    3,
    4,
    if (trigger) 5,
  ]; // trigger if로써 list 내에 if 문을 사용 할 수 있음
  print((collection));
}
