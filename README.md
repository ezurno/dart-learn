# 📖 **DART 문법** 📖

## 📕 목 록

#### [1. Type의 종류](#1-type)

#### [2. Null Safety 란?](#2-null-safety)

#### [3. List](#3-list-1)

#### [4. Map](#4-map-1)

#### [5. Set](#5-set-1)

#### [6. Collection, String Interpolation](#6-collection-string-interpolation-1)

#### [7. Parameter](#7-parameter-1)

#### [8. ??, ??=](#8---1)

#### [9. Typedef](#9-typedef-1)

#### [10. Class](#10-class-1)

#### [11. Enum](#11-enum-1)

#### [12. Abstract, super, override](#12abstract-super-override)

#### [13. Mixin](#13-mixin-1)

<br/>

---

<br/>

> ## **1. Type**

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

> ## **2. Null Safety**

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

> ## **7. Parameter**

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

> ## **8. ??, ??=**

<br/>
<br/>

#### **??**

- ?? 연산자는 전자가 null 값이면 후자를 반환해 줌

```Dart
    void main() {
        String? reformer(String? word) {
        return word?.toUpperCase() ?? null;
        }

        /*
        1. STring? 으로 return 값이 null이 될 수 있음을 알림
        2. args의 String? 값으로 args 가 null이 될 수 있음
        3. ?? 로 전자가 null 이면 후자의 값 return
        */
    }
```

<br/>
<br/>

#### **??=**

- 만약 값이 null 이면 값을 할당

```Dart
    void main() {
        String? test;
        test ??= "Hello"; // test가 null 이면 값을 할당
        print(test);
    }

```

<br/>
<br/>
<br/>
<br/>

> ## **9. Typedef**

<br/>
<br/>

#### **Typedef**

- 타입이 길어지면 Type을 간결하게 정의 해 줌

<br>

```Dart
    typedef ListInt = List<int>;
```

<br/>
<br/>
<br/>
<br/>

> ## **10. Class**

<br/>
<br/>

#### **Constructor**

- Dart 의 constructor는 간결하게 this를 사용해서 나타 낼 수 있음
- final 을 사용 시 late로 데이터 값을 잠시 대기 시켜서 넣음
- Dart에선 객체를 생성할 때 new를 사용하지 않아도 됨
- class 내엔 var를 사용하지말고 타입을 명시해주는 것이 좋음

<br>

```Dart
    class Player {
        last final String name;
        last int old;

        Player(this.name, this.old);

        String sayHello() {
            return "My name is $name";
        }
    }

    void main() {
        var player = Player("Lee", 27);
    }
```

<br/>
<br/>

#### **Constructor Named**

- 생성자에 값을 특정 값만 따로 넣어 줄땐 constructor named를 사용한다
- 특정 값을 따로 넣을땐 : 를 사용해 객체를 초기화 해준 후 값을 할당한다. (Dart 만의 특별한 문법 : )

<br/>

```Dart
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

```

<br/>
<br/>

#### **Cascade Notation**

- 객체로 생성한 값의 변수를 수정하고 싶을땐 object.variable 으로 수정하는 것 보단 cascade notation을 사용하는것이 편함
- .. 으로 특정 객체의 변수에 접근 함

<br/>

```Dart
    void main() {
        var lee = User(name: "Lee", country: "KR", old: 27)
            ..country = "EU"
            ..old = 26; // cascade notation
        print(lee.old);
}
```

<br/>
<br/>
<br/>
<br/>

> ## **11. Enum**

<br/>
<br/>

#### **Enum**

- enum 은 value 값을 직접 입력하다보면 나는 오타로 인한 에러발생을 줄이는 역할
- enum type을 걸어주면 enum의 value 값만 사용 할 수 있게 됨 => 오타 방지

<br>

```Dart
    enum Country { KR, EU } // value의 값을 직접 입력하면 오타가 날 가능성이 생김
    // enum을 사용해 값을 정형화 시켜놓음
    void main() {
        var lee = User(name: "Lee", country: Country.KR, old: 27)
            ..country = Country.EU
            ..old = 26; // cascade notation
        print(lee.old);
    }
```

<br/>
<br/>
<br/>
<br/>

> ## **12.Abstract, super, override**

<br/>
<br/>

#### **Abstract**

- abstract는 추상클래스, 추상클래스만으로는 객체생성 불가

<br/>

#### **Super**

- 부모 클래스에게 접근 하려면 super를 사용해 접근해야 함

<br/>

#### **Override**

- @override를 사용해 부모 클래스의 값을 덮어쓰기 가능함

  <br/>

```Dart
    abstract class Human {
        final String name;

        Human({required this.name}); // abstract의 constructor

        void sayHello() {
            print("Hi my name is $name.");
        }
    }

    class Student extends Human {
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
```

<br/>
<br/>
<br/>
<br/>

> ## **13. Mixin**

<br/>
<br/>

#### **Mixin**

- mixin은 다른 외부 클래스의 값을 그대로 가져올 때 사용
- with을 사용하며 상속의 개념과는 다름 그냥 그저 가져오는 것 뿐임

<br>

```Dart
   class Elite {
     // Mixin을 할 class
        final int score = 5;
        void sayHi() {
            print("I'm elite!");
        }
    }

    class Student  with Elite {
  // with을 사용해 Mixin을 함 => 상속은 아니지만 대상 class 의 변수나 함수를 가져옴
        final Team team;
        Student({
            required this.team,
            required String name,
        }) : super(name: name); // name은 parent로부터 오는 것 이므로 super로 연결 시켜준다
    }

    void main() {
        var lee = Student(
            team: Team.red,
            name: "lee",
        );

        lee.sayHi();
    }
```

<br/>
<br/>
<br/>
<br/>
