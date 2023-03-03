void main() {
  // map
  // dart 에서의 map 은 ts 의 object, object는 ts의 any

  var player = {
    "name": "Lee",
    "age": 27,
  }; // type을 명시하지 않은 map

  Map<int, bool> test = {
    1: true,
    2: false,
  }; // type을 Map<>으로 명시한 map

  List<Map<String, bool>> flavorList = [
    {
      "Apple": true,
      "Abocado": false,
    },
    {
      "Cheese": true,
      "Milk": true,
      "Yogurt": true,
      "Cream": false,
    },
  ]; // API 에서 값을 가져올 땐 List와 Map을 이중으로 사용하는 것 보다 후에 배울 class를 이용 하는걸 추천
}
