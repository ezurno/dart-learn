void main() {
  var player1 = Player("Lee", 26);
  var player2 = Player("Kim", 25);

  print(
      "${player1.sayHello()}, My name is ${player2.name} ${player2.old} years old.");
}

class Player {
  late final String name; // final을 먼저 사용 시 값이 없어서 오류. 따라서 late를 써준다
  late int old;

  // Player(String name, int old) {
  //   this.name = name;
  //   this.old = old;
  // }

  Player(this.name, this.old); // shortcut. 위의 방법을 간단하게 적용

  String sayHello() {
    return "Hello! $name";
  }
}
