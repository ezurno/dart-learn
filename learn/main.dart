typedef ListInt = List<int>; // typedef 로 타입을 재정의

void main() {
  print(reverseList([1, 2, 3]));
}

ListInt reverseList(ListInt list) {
  var reversed = list.reversed; // 뒤집기
  return reversed.toList(); // reversed 로 뒤집고 나면 iteral이 되므로 다시 List로
} // test 용 함수
