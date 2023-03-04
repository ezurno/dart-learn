void main() {
  print(reformer("lee"));
  print(reformer(null));

  String? test;
  test ??= "Hello"; // test가 null 이면 값을 할당
  print(test);
}

String? reformer(String? word) {
  return word?.toUpperCase() ?? null;
}
/*
  1. STring? 으로 return 값이 null이 될 수 있음을 알림
  2. args의 String? 값으로 args 가 null이 될 수 있음
  3. ?? 로 전자가 null 이면 후자의 값 return
*/