


class Calculator {
    
    // 계산기에 항상 계산된 결과값을 저장. 현재 숫자의 의미
    var result:Int
    var warning:String
    
    init() {
        self.result = 0
        self.warning = "계산기가 예민하여 결과값이 0으로 초기화됩니다."
        print("이 계산기는 매우 예민합니다. 잘못된 연산자 혹은 숫자를 넣을 경우, 누적된 결과값이 0으로 초기화되오니 주의해주시길 바랍니다.")
        print("다음의 operator만 지원합니다. +, -, *, /, %")
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
        
        // 0으로 나누는 것을 방지 :
        guard (num2 != 0) && (num1 != 0) else {
            print("0을 나누거나 0으로 숫자를 나눌 수 없습니다.")
            print(warning)
            return 0
        }
        
        return num1 / num2
    }
    
    // 숫자1을 숫자2로 나눈 나머지 구하기
    func modNumber(_ num1: Int, _ num2: Int) -> Int {
        return num1 % num2
    }
    
    
    // 연산자 기호와 숫자를 받아 결과를 출력해주는 메소드
    // 인스턴스 내부에 result를 기록중이므로 연산 결과를 result에 저장하고 이를 반환함.
    func calculate(operator opText: String, firstNumber: Int?, secondNumber: Int) -> Int {
        switch opText {
        case "+":
            if firstNumber != nil {
                result =  self.sumNumber(firstNumber!, secondNumber)
            } else {
                result =  self.sumNumber(result, secondNumber)
            }
            
        case "-":
            if firstNumber != nil {
                result =  self.subNumber(firstNumber!, secondNumber)
            } else {
                result =  self.subNumber(result, secondNumber)
            }
        case "*":
            if firstNumber != nil {
                result =  self.mulNumber(firstNumber!, secondNumber)
            } else {
                result =  self.mulNumber(result, secondNumber)
            }
        case "/":
            if firstNumber != nil {
                result =  self.devNumber(firstNumber!, secondNumber)
            } else {
                result =  self.devNumber(result, secondNumber)
            }
        case "%":
            if firstNumber != nil {
                result =  self.modNumber(firstNumber!, secondNumber)
            } else {
                result =  self.modNumber(result, secondNumber)
            }
        default:
            print("잘못된 연산자입니다. +, -, *, /, % 만 지원합니다.")
            print(warning)
            result = 0
        }
        
        return result
    }
    
    // 현재 인스턴스에 저장된 result 값을 반환
    func printResult() -> Int {
        print(result)
        return result
    }
    
    func resetResult() -> Int {
        result == 0
        print("결과값이 0으로 초기화되었습니다.")
        return result
    }
    
}


let calculator = Calculator()
let addResult = calculator.calculate(operator: "+", firstNumber: 10, secondNumber: 20)
let modResult = calculator.calculate(operator: "%", firstNumber: 7, secondNumber: 30)

calculator.printResult()


