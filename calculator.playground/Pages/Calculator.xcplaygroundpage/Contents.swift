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
    
    
    
    // 연산자 기호와 숫자를 받아 결과를 출력해주는 메소드
    // 인스턴스 내부에 result를 기록중이므로 연산 결과를 result에 저장하고 이를 반환함.
    func calculate(operator opText: String, firstNumber: Int?, secondNumber: Int) -> Int {
        switch opText {
        case "+":
            if firstNumber != nil {
                result =  AddOperation().sumNumber(firstNumber!, secondNumber)
            } else {
                result =  AddOperation().sumNumber(result, secondNumber)
            }
            
        case "-":
            if firstNumber != nil {
                result =  SubstractOperation().subNumber(firstNumber!, secondNumber)
            } else {
                result =  SubstractOperation().subNumber(result, secondNumber)
            }
        case "*":
            if firstNumber != nil {
                result =  MultiplyOperation().mulNumber(firstNumber!, secondNumber)
            } else {
                result =  MultiplyOperation().mulNumber(result, secondNumber)
            }
        case "/":
            if firstNumber != nil {
                result =  DivideOperation().devNumber(firstNumber!, secondNumber)
            } else {
                result =  DivideOperation().devNumber(result, secondNumber)
            }
        case "%":
            if firstNumber != nil {
                result =  ModulusOperation().modNumber(firstNumber!, secondNumber)
            } else {
                result =  ModulusOperation().modNumber(result, secondNumber)
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
let modResult = calculator.calculate(operator: "%", firstNumber: 100, secondNumber: 0)


calculator.printResult()


