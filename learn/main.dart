void main() {
  var player1 = Player(
    name: "Lee",
    old: 27,
    team: "red",
  );
  var player2 = Player(
    name: "Kim",
    old: 26,
    team: "blue",
  );

  print(
      "${player1.sayHello()}, My name is ${player2.name} ${player2.old} years old.");
}

class Player {
  late final String name;
  late int old;
  late String team;

  Player(
      {required this.name,
      required this.old,
      required this.team}); // args가 많아지면 positional 방법은 불편함
  // 따라서 {} 로 named로 전환 해줌, null 이 될 수 있으므로 required 를 사용 해줌

  String sayHello() {
    return "Hello! $name";
  }
}
