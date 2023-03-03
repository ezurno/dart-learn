void main() {
  late final String name; // 값이 들어올때까지 잠시 대기
  // 값이 아직 들어오지 않았지만 final로 지정할 수 있으며 API와 소통할때 유용함

  name = "Hello";

  /*------*/

  final APIfinal = fetchAPI();
  const APIconst =
      fetchAPI(); // error. Dart 에서의 const는 다른 외부 함수에서 가져오는 value를 사용할때 사용 x
}

String fetchAPI() {
  return "123";
}
