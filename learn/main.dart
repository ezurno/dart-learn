void main() {
  var player1 = Player.teamRed(
    // constructor named. user로부터 name과 old만 가져오고 team은 직접 배정 해줄 때
    name: "Lee",
    old: 27,
  );
  var player2 = Player.teamBlue(
    name: "Kim",
    old: 26,
  );

  print(
      "${player1.sayHello()}, My name is ${player2.name} ${player2.old} years old and I'm ${player2.team} team.");
}

class Player {
  late final String name;
  late int old;
  late String team;

  Player({
    required this.name,
    required this.old,
    required this.team,
  });

  Player.teamBlue({
    // constructor named
    required this.name,
    required this.old,
  }) : this.team = "blue"; // Dart에선 특정 변수를 직접 할당 해줄 때 : 를 사용해 객체 초기화를 해준다.

  Player.teamRed({
    required this.name,
    required this.old,
  }) : this.team = "red";

  String sayHello() {
    return "Hello! $name";
  }
}
