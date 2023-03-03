void main() {
  // set

  var players = {"Lee", "Kim", "Park"}; // type이 명시되지 않은 set

  Set<int> numbers = {1, 2, 3}; // type이 명시 된 set
  numbers.add(4);
  numbers.add(4);
  numbers.add(4);
  numbers.add(4);
  numbers.add(4);

  print(numbers); // Set의 값은 List와 달리 unique 하기 떄문에 값이 중복되면 하나만 들어감
}
