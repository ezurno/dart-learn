void main() {
  var player = Player(); // Dart에선 new를 사용 하지 않아도 됨
  print(player.name);
  player.old = 26;
  print(player.old);
}

class Player {
  String name = "Lee";
  int old = 27;

  void sayHello() {
    print("Hello! $name"); // Dart에서는 this를 사용하지 않는 것을 권장 (작동은 함), 대신 $
  }
} // class를 사용할 시에는 var보단 type 명시해주어야 됨