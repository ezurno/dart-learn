void main() {
  var apiData = [
    {
      "name": "Lee",
      "country": "KR",
      "old": 27,
    },
    {
      "name": "Kim",
      "country": "KR",
      "old": 26,
    },
    {
      "name": "Park",
      "country": "KR",
      "old": 25,
    },
  ]; // 외부 api 에서 가져왔다는 예시

  apiData.forEach((userJson) {
    var user = User.fromJson(userJson); // 각 값을 User class로 객체 생성
    user.userInfo();
  });
}

class User {
  late final String name, country;
  late final int old;

  User({
    required this.name,
    required this.country,
    required this.old,
  });

  User.fromJson(Map<String, dynamic> userJson)
      : name = userJson["name"],
        country = userJson["country"],
        old = userJson["old"];

  void userInfo() {
    print("$name , $country, $old");
  }
}
