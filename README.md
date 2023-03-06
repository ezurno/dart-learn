# **DART 문법**

## 목 록

1. Type 의 종류
2. Null Safety 란?

---

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

- 기존 Dart에서는 null 값이 참조되면 컴파일 에러가 났었음

- 하지만 버전이 업데이트가 되면서 null safety를 제공함

- null 값이 참조되어도 문제 없게끔 해주는 것을 말하며 변수 이름에 **?** 로 사용 한다

<br/>
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
