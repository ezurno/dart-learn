enum Team { red, blue }

void main() {
  var lee = Student(
    team: Team.red,
    name: "lee",
  );

  lee.sayHello();
  lee.sayHi();
}

abstract class Human {
  final String name;
  Human({required this.name}); // abstract의 constructor

  void sayHello() {
    print("Hi my name is $name.");
  }
}

class Elite {
  // Mixin을 할 class
  final int score = 5;
  void sayHi() {
    print("I'm elite!");
  }
}

class Student extends Human with Elite {
  // with을 사용해 Mixin을 함 => 상속은 아니지만 대상 class 의 변수나 함수를 가져옴
  final Team team;

  Student({
    required this.team,
    required String name,
  }) : super(name: name); // name은 parent로부터 오는 것 이므로 super로 연결 시켜준다

  @override
  void sayHello() {
    super.sayHello(); // super로 override 할 parent의 sayHello 가져옴
    print("and I play for ${team.name}");
  }
}
