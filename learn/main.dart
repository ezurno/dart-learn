void main() {
  print(sayHello("Lee", "EU"));
  print(sayBye(name: "Kim", country: "KR"));
  print(sayBye(name: "Park", number: 2016));
}

String sayHello(String name, String country) {
  return "Hello! $name $country";
} // 이렇게 사용을 하면 args의 첫번째 값이 무엇인지, 두번째 값이 무엇인지 헷갈림
// 따라서 하단의 방법 사용 권장

String sayBye({
  required String name,
  int number = 2022,
  String? country,
}) {
  return "Bye, $name $country in $number";
} // 순서가 달라져도 args 값을 입력하면 잘 들어감 단 함수 내 {} 사용
