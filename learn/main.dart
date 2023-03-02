void main() {
  var name = "LEE"; // var로 타입을 명시하지 않을 수 있음
  String word = "Hello"; // 반대로 type을 명시 해 줄 수도 있음

  dynamic dyn;
  dyn = 'lee';
  dyn = 123;
  dyn = false;
  // dynamic 은 type을 명시해 주지 않아도 유동적으로 바뀌는 타입
  // dynamic 은 var와는 조금 다름
  // var 는 type이 바뀌면 error가 뜨지만 dynamic은 뜨지 않음
}
