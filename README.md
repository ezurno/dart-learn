# 📖 **DART 문법** 📖

## 📕 목 록

#### [1. Type 의 종류](#1-type-ec9d98-eca285eba598-1)

#### [2. Null Safety 란?](#2-null-safety-eb9e80-1)

#### [3. List](#3-list-1)

#### [4. Map](#4-map-1)

#### [5. Set](#5-set-1)

#### [6. Collection, String Interpolation](#6-collection-string-interpolation-1)

#### [7. Parameter](#7-parameter-1)

<br/>

---

<br/>

> ## **1. Type 의 종류**

<br>

#### **var**

- 타입을 따로 명시하지 않고 컴파일러가 타입을 유추하게 함

#### **String, int, bool ...**

- 타입이 명시 됨

#### **dynamic**

- 타입이 유동적으로 바뀔 수 있는 타입

```Dart
    void main() {
        var name = "LEE";
        String word = "Hello";
        dynamic dyn;
        dyn = 'lee';
        dyn = 123;
        dyn = false;
    }
```

#### **late**

- API에서 값을 받아올때 잠시 대기
- 값을 final에서 먼저 적용 시키지 않아도 가능

#### **const**

- js ts와는 다르게 컴파일 시점 기준이며 컴파일 기준에서 값이 없으면 error
- API 통신때 const를 사용하면 안됨 (late final 을 사용한다)

<br/>
<br/>
<br/>
<br/>

> ## **2. Null Safety 란 ?**

<br/>
<br/>

- 기존 Dart에서는 null 값이 참조되면 컴파일 에러가 났었음

- 하지만 버전이 업데이트가 되면서 null safety를 제공함

- null 값이 참조되어도 문제 없게끔 해주는 것을 말하며 변수 이름에 **?** 로 사용 한다

<br/>

```Dart
    void main() {
        String? isNull = "word";
        isNull = null;
        print(isNull.length);
        // null safety
        // null 값에 length 메소드를 호출해서 오류가 나야하지만 나지 않음
    }
```

<br/>
<br/>
<br/>
<br/>

> ## **3. List**

<br/>
<br/>

#### **List<>**

- List는 배열을 만들 때 사용
- List를 만드는 방법은 두가지가 존재함

<br/>
<br/>

```Dart
    void main() {
        var list1 =[1,false,3,"Hi"];
        // 타입을 명시하지 않고 배열을 만드는 방법 1

        List<int> list2 = [5,6,7,8];
        // List<> 형태로 타입을 명시하고 배열을 만드는 방법 2
    }
```

<br/>
<br/>
<br/>
<br/>

> ## **4. Map**

<br/>
<br/>

#### **Map<>**

- Map<>은 TS의 object와 비슷하며 Dart의 object 형식은 TS의 any라고 볼 수 있음
- API를 이용 할 때 List와 Map을 사용 하는 것 보단 후에 배울 class를 사용하길 권장

<br/>
<br/>

```Dart
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
```

<br/>
<br/>
<br/>
<br/>

> ## **5. Set**

<br/>
<br/>

#### **Set<>**

- Set 은 List와 다르게 값이 unique함, 중복값이 들어오면 변하지 않음
- {} 를 사용함

```Dart
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
```

<br/>
<br/>
<br/>
<br/>

> ## **6. Collection, String Interpolation**

<br/>
<br/>

#### **String Interpolation**

- Dart는 String Interpolation으로 변수 값을 활용 할 수 있고, String 값도 합칠 수 있음

```Dart
    void main() {
        var name = "Lee",
        var year = "2022",
        var greeting = "Hello! $Lee ${year + 2}";

        print(greeting);
    }
```

#### **Collection**

- collection 은 배열 내에 if나 for 등으로 배열 값을 변동 시킬 수 있음

```Dart
    void main() {
        //collection if
         var trigger = true;
        List<int> collection = [
            1,
            2,
            3,
            4,
            if (trigger) 5,
        ]; // trigger if로써 list 내에 if 문을 사용 할 수 있음
        print((collection));

        // collection for
        var oldFriends = ["Lee", "Kim"];
        var newFriends = [
            "Boo",
            "Park",
            "Nam",
            for (var friend in oldFriends) "$friend ⭐"
        ]


    }
```

<br/>
<br/>
<br/>
<br/>

> ## **7. parameter**

<br/>
<br/>

#### **Positional**

- 매개변수에 값을 순서대로 넣어야 함
- [] 로 없어도 되는 값을 감싸주고 ?를 사용해 default 값을 넣어줌
- Positional을 사용하는 것 보단 다음에 나올 Named를 사용하는 것이 더 간결하고 좋아보임

```Dart
    void main() {
        print(sayHello("Lee", "2023"));
    }

    String sayHello(String name, String country, [int? year = 2023]) {
        return "Hello! $name, $country in $year";
    }
```

<br/>
<br/>

#### **Named**

- 매개변수를 {} 로 감싸주면 Named parameter
- 반드시 넣어야하는 값엔 required, 없어도 되는 값이면 ? 을 사용해 표기

```Dart
    void main() {
        print(sayBye(name: "Lee", country: "KR"));
    }

    String sayBye({
        required String name,
        int year = 2022, // default value
        String? country,
    }) {
        return "Bye, $name $country in $year ";
    }

```

<br/>
<br/>
<br/>
<br/>
