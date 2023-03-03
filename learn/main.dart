void main() {
  // final var name = "Name"; error!! var에는 final 사용 불가
  const constName = "name"; // const 사용하면 됨

  final String name = "name";
  // final을 사용 하면 name을 변경하지 못하게 할 수 있음

  /*------------------*/

  String? isNull = "word";
  isNull = null;
  print(isNull?.length); // null safety
}
