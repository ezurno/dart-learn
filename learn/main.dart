enum Country { KR, EU } // value의 값을 직접 입력하면 오타가 날 가능성이 생김
// enum을 사용해 값을 정형화 시켜놓음

void main() {
  var lee = User(name: "Lee", country: Country.KR, old: 27)
    ..country = Country.EU
    ..old = 26; // cascade notation

  print(lee.old);
}

class User {
  String name;
  Country country; // enum type을 걸어놓으면 country 의 값은 enum 의 value만 사용이 가능함
  int old;

  User({
    required this.name,
    required this.country,
    required this.old,
  });

  void userInfo() {
    print("$name , $country, $old");
  }
}
