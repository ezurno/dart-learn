void main() {
  print(sayHello("Lee", "KR"));
}

String sayHello(String name, String country, [int? number = 2023]) {
  return "Hello! $name, $country in $number";
} // optional positional parameter

// [] 로 없어도 되는 값을 감싸줌, 하지만 이방법보다 named params 를 쓰는게 더 편함
