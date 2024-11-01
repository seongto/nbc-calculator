# iOS_week2_calculator

![계산기 만들기](https://help.apple.com/assets/65D6896CA6CCCD9ECD051E60/65D6896D44E24248E80D32D1/ko_KR/5250122ee560cee90b3d7cfa2d91695e.png)


## Project Information
  - 프로젝트명 : 나의 스위프트 계산기
  - 프로젝트 소개 : 스위프트의 기초문법을 활용하여 계산기를 만들자.
<br><br><br>

## 프로젝트 수행 과제
### 1. 수행 목표 
  - Playground를 사용하여 함수의 파라미터로 직접 사용자의 입력값을 받아 계산을 실행하며, 예외 상황에 대한 처리를 통해 견고한 코드를 작성하는 것을 목표로 합니다.   
```swift
// 함수의 파라미터로 숫자를 직접 입력
let calculator = Calculator()
let addResult = calculator.calculate(operator: "+", firstNumber: 10, secondNumber: 20)
```   
<br><br>

### 2. 필수 구현 기능
  - LV 1
    + [x] 더하기, 빼기, 나누기, 곱하기 연산을 수행할 수 있는 Calculator 클래스를 만들기
    + [x] 생성한 클래스를 이용하여 연산을 진행하고 출력
    + [x] 오류가 날 수 있는 ‘예외처리’ 상황에 대해 고민해보기
  - LV 2
    + [x] Lv1에서 만든 Calculator 클래스에 “나머지 연산”이 가능하도록 코드를 추가하고, 연산 진행 후 출력
    + [x] 오류가 날 수 있는 ‘예외처리’ 상황에 대해 고민해보기 + 구현하기 
  - LV 3
    + 아래 각각의 클래스들을 만들고 클래스간의 관계를 고려하여 Calculator 클래스와 관계 맺기
      - [x] AddOperation(더하기)
      - [x] SubstractOperation(빼기)
      - [x] MultiplyOperation(곱하기)
      - [x] DivideOperation(나누기)
    + [x] Calculator 클래스의 내부코드를 변경 : 관계를 맺은 후 필요하다면 별도로 만든 연산 클래스의 인스턴스를 Calculator 내부에서 사용
<br><br>

![hard mode](https://staticdelivery.nexusmods.com/mods/5113/images/headers/229_1676449560.jpg)

### 3. 선택 구현 기능
  - LV 4
    + [ ] AbstractOperation라는 추상화된 프로토콜 만들기
    + [ ] 기존에 구현한 AddOperation(더하기), SubtractOperation(빼기), MultiplyOperation(곱하기), DivideOperation(나누기) 클래스들과 관계를 맺고 Calculator 클래스의 내부 코드를 변경
    + [ ] 스위프트의 어떤 문법을 이용하여 추상화할 수 있을지 생각해 봅시다
    + [ ] Lv3 와 비교해서 어떠한 점이 개선 되었는지 정리하기
