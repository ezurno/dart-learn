void main() {
  var lee = User(name: "Lee", country: "KR", old: 27)
    ..country = "EU"
    ..old = 26; // cascade notation

  print(lee.old);
}

class User {
  String name, country;
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
