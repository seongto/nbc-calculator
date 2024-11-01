

class Calculator {
    
    // 계산기에 항상 계산된 결과값을 저장. 현재 숫자의 의미
    var result:Int
    
    init() {
        self.result = 0
    }
    
    // 숫자 2개를 더하기
    func sumNumber(_ num1: Int, _ num2: Int) -> Int {
        return num1 + num2
    }
    
    // 숫자2를 숫자1에서 빼기
    func subNumber(_ num1: Int, _ num2: Int) -> Int {
        return num1 - num2
    }
    
    // 숫자1과 숫자2를 곱하기
    func mulNumber(_ num1: Int, _ num2: Int) -> Int {
        return num1 * num2
    }
    
    // 숫자1을 숫자2로 나누기
    func devNumber(_ num1: Int, _ num2: Int) -> Int {
        return num1 / num2
    }
    
    // 연산자 기호와 숫자를 받아 결과를 출력해주는 메소드
    // 인스턴스 내부에 result를 기록중이므로 연산 결과를 result에 저장하고 이를 반환함.
    func calculate(operator opText: String, firstNumber: Int, secondNumber: Int) -> Int {
        switch opText {
        case "+":
            result =  self.sumNumber(firstNumber, secondNumber)
        case "-":
            result =  self.subNumber(firstNumber, secondNumber)
        case "*":
            result =  self.mulNumber(firstNumber, secondNumber)
        case "/":
            result =  self.devNumber(firstNumber, secondNumber)
        default:
            print("잘못된 연산자입니다.")
            return 0
        }
        
        return result
    }
    
    // 현재 인스턴스에 저장된 result 값을 반환
    func printResult() -> Int {
        print(result)
        return result
    }
    
}


let calculator = Calculator()
let addResult = calculator.calculate(operator: "+", firstNumber: 10, secondNumber: 20)

calculator.printResult()


