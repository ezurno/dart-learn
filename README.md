# ๐ **DART ๋ฌธ๋ฒ** ๐

## ๐ ๋ชฉ ๋ก

#### [1. Type์ ์ข๋ฅ](#1-type)

#### [2. Null Safety ๋?](#2-null-safety)

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

- ํ์์ ๋ฐ๋ก ๋ช์ํ์ง ์๊ณ  ์ปดํ์ผ๋ฌ๊ฐ ํ์์ ์ ์ถํ๊ฒ ํจ

#### **String, int, bool ...**

- ํ์์ด ๋ช์ ๋จ

#### **dynamic**

- ํ์์ด ์ ๋์ ์ผ๋ก ๋ฐ๋ ์ ์๋ ํ์

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

- API์์ ๊ฐ์ ๋ฐ์์ฌ๋ ์ ์ ๋๊ธฐ
- ๊ฐ์ final์์ ๋จผ์  ์ ์ฉ ์ํค์ง ์์๋ ๊ฐ๋ฅ

#### **const**

- js ts์๋ ๋ค๋ฅด๊ฒ ์ปดํ์ผ ์์  ๊ธฐ์ค์ด๋ฉฐ ์ปดํ์ผ ๊ธฐ์ค์์ ๊ฐ์ด ์์ผ๋ฉด error
- API ํต์ ๋ const๋ฅผ ์ฌ์ฉํ๋ฉด ์๋จ (late final ์ ์ฌ์ฉํ๋ค)

<br/>
<br/>
<br/>
<br/>

> ## **2. Null Safety**

<br/>

- ๊ธฐ์กด Dart์์๋ null ๊ฐ์ด ์ฐธ์กฐ๋๋ฉด ์ปดํ์ผ ์๋ฌ๊ฐ ๋ฌ์์

- ํ์ง๋ง ๋ฒ์ ์ด ์๋ฐ์ดํธ๊ฐ ๋๋ฉด์ null safety๋ฅผ ์ ๊ณตํจ

- null ๊ฐ์ด ์ฐธ์กฐ๋์ด๋ ๋ฌธ์  ์๊ฒ๋ ํด์ฃผ๋ ๊ฒ์ ๋งํ๋ฉฐ ๋ณ์ ์ด๋ฆ์ **?** ๋ก ์ฌ์ฉ ํ๋ค

<br/>

```Dart
    void main() {
        String? isNull = "word";
        isNull = null;
        print(isNull.length);
        // null safety
        // null ๊ฐ์ length ๋ฉ์๋๋ฅผ ํธ์ถํด์ ์ค๋ฅ๊ฐ ๋์ผํ์ง๋ง ๋์ง ์์
    }
```

<br/>
<br/>
<br/>
<br/>

> ## **3. List**

<br/>

#### **List<>**

- List๋ ๋ฐฐ์ด์ ๋ง๋ค ๋ ์ฌ์ฉ
- List๋ฅผ ๋ง๋๋ ๋ฐฉ๋ฒ์ ๋๊ฐ์ง๊ฐ ์กด์ฌํจ

<br/>
<br/>

```Dart
    void main() {
        var list1 =[1,false,3,"Hi"];
        // ํ์์ ๋ช์ํ์ง ์๊ณ  ๋ฐฐ์ด์ ๋ง๋๋ ๋ฐฉ๋ฒ 1

        List<int> list2 = [5,6,7,8];
        // List<> ํํ๋ก ํ์์ ๋ช์ํ๊ณ  ๋ฐฐ์ด์ ๋ง๋๋ ๋ฐฉ๋ฒ 2
    }
```

<br/>
<br/>
<br/>
<br/>

> ## **4. Map**

<br/>

#### **Map<>**

- Map<>์ TS์ object์ ๋น์ทํ๋ฉฐ Dart์ object ํ์์ TS์ any๋ผ๊ณ  ๋ณผ ์ ์์
- API๋ฅผ ์ด์ฉ ํ  ๋ List์ Map์ ์ฌ์ฉ ํ๋ ๊ฒ ๋ณด๋จ ํ์ ๋ฐฐ์ธ class๋ฅผ ์ฌ์ฉํ๊ธธ ๊ถ์ฅ

<br/>
<br/>

```Dart
    void main() {
        // map
        // dart ์์์ map ์ ts ์ object, object๋ ts์ any
        var player = {
            "name": "Lee",
            "age": 27,
         }; // type์ ๋ช์ํ์ง ์์ map

         Map<int, bool> test = {
           1: true,
           2: false,
         }; // type์ Map<>์ผ๋ก ๋ช์ํ map

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
         ]; // API ์์ ๊ฐ์ ๊ฐ์ ธ์ฌ ๋ List์ Map์ ์ด์ค์ผ๋ก ์ฌ์ฉํ๋ ๊ฒ ๋ณด๋ค ํ์ ๋ฐฐ์ธ class๋ฅผ ์ด์ฉ ํ๋๊ฑธ ์ถ์ฒ
    }
```

<br/>
<br/>
<br/>
<br/>

> ## **5. Set**

<br/>

#### **Set<>**

- Set ์ List์ ๋ค๋ฅด๊ฒ ๊ฐ์ด uniqueํจ, ์ค๋ณต๊ฐ์ด ๋ค์ด์ค๋ฉด ๋ณํ์ง ์์
- {} ๋ฅผ ์ฌ์ฉํจ

```Dart
    void main() {
        // set
        var players = {"Lee", "Kim", "Park"}; // type์ด ๋ช์๋์ง ์์ set
        Set<int> numbers = {1, 2, 3}; // type์ด ๋ช์ ๋ set
        numbers.add(4);
        numbers.add(4);
        numbers.add(4);
        numbers.add(4);
        numbers.add(4);
        print(numbers); // Set์ ๊ฐ์ List์ ๋ฌ๋ฆฌ unique ํ๊ธฐ ๋๋ฌธ์ ๊ฐ์ด ์ค๋ณต๋๋ฉด ํ๋๋ง ๋ค์ด๊ฐ
    }
```

<br/>
<br/>
<br/>
<br/>

> ## **6. Collection, String Interpolation**

<br/>

#### **String Interpolation**

- Dart๋ String Interpolation์ผ๋ก ๋ณ์ ๊ฐ์ ํ์ฉ ํ  ์ ์๊ณ , String ๊ฐ๋ ํฉ์น  ์ ์์

```Dart
    void main() {
        var name = "Lee",
        var year = "2022",
        var greeting = "Hello! $Lee ${year + 2}";

        print(greeting);
    }
```

#### **Collection**

- collection ์ ๋ฐฐ์ด ๋ด์ if๋ for ๋ฑ์ผ๋ก ๋ฐฐ์ด ๊ฐ์ ๋ณ๋ ์ํฌ ์ ์์

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
        ]; // trigger if๋ก์จ list ๋ด์ if ๋ฌธ์ ์ฌ์ฉ ํ  ์ ์์
        print((collection));

        // collection for
        var oldFriends = ["Lee", "Kim"];
        var newFriends = [
            "Boo",
            "Park",
            "Nam",
            for (var friend in oldFriends) "$friend โญ"
        ]


    }
```

<br/>
<br/>
<br/>
<br/>

> ## **7. Parameter**

<br/>

#### **Positional**

- ๋งค๊ฐ๋ณ์์ ๊ฐ์ ์์๋๋ก ๋ฃ์ด์ผ ํจ
- [] ๋ก ์์ด๋ ๋๋ ๊ฐ์ ๊ฐ์ธ์ฃผ๊ณ  ?๋ฅผ ์ฌ์ฉํด default ๊ฐ์ ๋ฃ์ด์ค
- Positional์ ์ฌ์ฉํ๋ ๊ฒ ๋ณด๋จ ๋ค์์ ๋์ฌ Named๋ฅผ ์ฌ์ฉํ๋ ๊ฒ์ด ๋ ๊ฐ๊ฒฐํ๊ณ  ์ข์๋ณด์

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

- ๋งค๊ฐ๋ณ์๋ฅผ {} ๋ก ๊ฐ์ธ์ฃผ๋ฉด Named parameter
- ๋ฐ๋์ ๋ฃ์ด์ผํ๋ ๊ฐ์ required, ์์ด๋ ๋๋ ๊ฐ์ด๋ฉด ? ์ ์ฌ์ฉํด ํ๊ธฐ

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

#### **??**

- ?? ์ฐ์ฐ์๋ ์ ์๊ฐ null ๊ฐ์ด๋ฉด ํ์๋ฅผ ๋ฐํํด ์ค

```Dart
    void main() {
        String? reformer(String? word) {
        return word?.toUpperCase() ?? null;
        }

        /*
        1. STring? ์ผ๋ก return ๊ฐ์ด null์ด ๋  ์ ์์์ ์๋ฆผ
        2. args์ String? ๊ฐ์ผ๋ก args ๊ฐ null์ด ๋  ์ ์์
        3. ?? ๋ก ์ ์๊ฐ null ์ด๋ฉด ํ์์ ๊ฐ return
        */
    }
```

<br/>
<br/>

#### **??=**

- ๋ง์ฝ ๊ฐ์ด null ์ด๋ฉด ๊ฐ์ ํ ๋น

```Dart
    void main() {
        String? test;
        test ??= "Hello"; // test๊ฐ null ์ด๋ฉด ๊ฐ์ ํ ๋น
        print(test);
    }

```

<br/>
<br/>
<br/>
<br/>

> ## **9. Typedef**

<br/>

#### **Typedef**

- ํ์์ด ๊ธธ์ด์ง๋ฉด Type์ ๊ฐ๊ฒฐํ๊ฒ ์ ์ ํด ์ค

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

#### **Constructor**

- Dart ์ constructor๋ ๊ฐ๊ฒฐํ๊ฒ this๋ฅผ ์ฌ์ฉํด์ ๋ํ ๋ผ ์ ์์
- final ์ ์ฌ์ฉ ์ late๋ก ๋ฐ์ดํฐ ๊ฐ์ ์ ์ ๋๊ธฐ ์์ผ์ ๋ฃ์
- Dart์์  ๊ฐ์ฒด๋ฅผ ์์ฑํ  ๋ new๋ฅผ ์ฌ์ฉํ์ง ์์๋ ๋จ
- class ๋ด์ var๋ฅผ ์ฌ์ฉํ์ง๋ง๊ณ  ํ์์ ๋ช์ํด์ฃผ๋ ๊ฒ์ด ์ข์

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

- ์์ฑ์์ ๊ฐ์ ํน์  ๊ฐ๋ง ๋ฐ๋ก ๋ฃ์ด ์ค๋ constructor named๋ฅผ ์ฌ์ฉํ๋ค
- ํน์  ๊ฐ์ ๋ฐ๋ก ๋ฃ์๋ : ๋ฅผ ์ฌ์ฉํด ๊ฐ์ฒด๋ฅผ ์ด๊ธฐํ ํด์ค ํ ๊ฐ์ ํ ๋นํ๋ค. (Dart ๋ง์ ํน๋ณํ ๋ฌธ๋ฒ : )

<br/>

```Dart
    void main() {
        var player1 = Player.teamRed(
            // constructor named. user๋ก๋ถํฐ name๊ณผ old๋ง ๊ฐ์ ธ์ค๊ณ  team์ ์ง์  ๋ฐฐ์  ํด์ค ๋
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
    }) : this.team = "blue"; // Dart์์  ํน์  ๋ณ์๋ฅผ ์ง์  ํ ๋น ํด์ค ๋ : ๋ฅผ ์ฌ์ฉํด ๊ฐ์ฒด ์ด๊ธฐํ๋ฅผ ํด์ค๋ค.

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

- ๊ฐ์ฒด๋ก ์์ฑํ ๊ฐ์ ๋ณ์๋ฅผ ์์ ํ๊ณ  ์ถ์๋ object.variable ์ผ๋ก ์์ ํ๋ ๊ฒ ๋ณด๋จ cascade notation์ ์ฌ์ฉํ๋๊ฒ์ด ํธํจ
- .. ์ผ๋ก ํน์  ๊ฐ์ฒด์ ๋ณ์์ ์ ๊ทผ ํจ

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

#### **Enum**

- enum ์ value ๊ฐ์ ์ง์  ์๋ ฅํ๋ค๋ณด๋ฉด ๋๋ ์คํ๋ก ์ธํ ์๋ฌ๋ฐ์์ ์ค์ด๋ ์ญํ 
- enum type์ ๊ฑธ์ด์ฃผ๋ฉด enum์ value ๊ฐ๋ง ์ฌ์ฉ ํ  ์ ์๊ฒ ๋จ => ์คํ ๋ฐฉ์ง

<br>

```Dart
    enum Country { KR, EU } // value์ ๊ฐ์ ์ง์  ์๋ ฅํ๋ฉด ์คํ๊ฐ ๋  ๊ฐ๋ฅ์ฑ์ด ์๊น
    // enum์ ์ฌ์ฉํด ๊ฐ์ ์ ํํ ์์ผ๋์
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

#### **Abstract**

- abstract๋ ์ถ์ํด๋์ค, ์ถ์ํด๋์ค๋ง์ผ๋ก๋ ๊ฐ์ฒด์์ฑ ๋ถ๊ฐ

<br/>

#### **Super**

- ๋ถ๋ชจ ํด๋์ค์๊ฒ ์ ๊ทผ ํ๋ ค๋ฉด super๋ฅผ ์ฌ์ฉํด ์ ๊ทผํด์ผ ํจ

<br/>

#### **Override**

- @override๋ฅผ ์ฌ์ฉํด ๋ถ๋ชจ ํด๋์ค์ ๊ฐ์ ๋ฎ์ด์ฐ๊ธฐ ๊ฐ๋ฅํจ

  <br/>

```Dart
    abstract class Human {
        final String name;

        Human({required this.name}); // abstract์ constructor

        void sayHello() {
            print("Hi my name is $name.");
        }
    }

    class Student extends Human {
        final Team team;

        Student({
            required this.team,
            required String name,
        }) : super(name: name); // name์ parent๋ก๋ถํฐ ์ค๋ ๊ฒ ์ด๋ฏ๋ก super๋ก ์ฐ๊ฒฐ ์์ผ์ค๋ค

        @override
        void sayHello() {
            super.sayHello(); // super๋ก override ํ  parent์ sayHello ๊ฐ์ ธ์ด
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

#### **Mixin**

- mixin์ ๋ค๋ฅธ ์ธ๋ถ ํด๋์ค์ ๊ฐ์ ๊ทธ๋๋ก ๊ฐ์ ธ์ฌ ๋ ์ฌ์ฉ
- with์ ์ฌ์ฉํ๋ฉฐ ์์์ ๊ฐ๋๊ณผ๋ ๋ค๋ฆ ๊ทธ๋ฅ ๊ทธ์  ๊ฐ์ ธ์ค๋ ๊ฒ ๋ฟ์

<br>

```Dart
   class Elite {
     // Mixin์ ํ  class
        final int score = 5;
        void sayHi() {
            print("I'm elite!");
        }
    }

    class Student  with Elite {
  // with์ ์ฌ์ฉํด Mixin์ ํจ => ์์์ ์๋์ง๋ง ๋์ class ์ ๋ณ์๋ ํจ์๋ฅผ ๊ฐ์ ธ์ด
        final Team team;
        Student({
            required this.team,
            required String name,
        }) : super(name: name); // name์ parent๋ก๋ถํฐ ์ค๋ ๊ฒ ์ด๋ฏ๋ก super๋ก ์ฐ๊ฒฐ ์์ผ์ค๋ค
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
