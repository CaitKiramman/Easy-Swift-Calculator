// The Swift Programming Language
// https://docs.swift.org/swift-book


func CheckOperators( IsItOperator : inout String){ /// inout means that the function will change the actual value of the variable passed to it
while(IsItOperator != "+" && IsItOperator != "-" && IsItOperator != "*" && IsItOperator != "/") {
    print("Invalid operator. Please choose +, -, * or /")
    IsItOperator = readLine() ?? ""
    }
}

print("Please choose which operator you would like to use")
var operatorChoice = readLine()  ?? "" // now operatorChoice is String, not Optional,  if readLine() returns nil (user didn’t type anything), use an empty string "" instead.
CheckOperators(IsItOperator: &operatorChoice)  // Pass by reference, we let the compiler know that we send the variable as IsItOperator. Also we inform it that THIS value will change

print("Please choose first number")
let firstNum = Double(readLine() ?? "") ?? 0
print("Please choose second number")
let secondNum = Double(readLine() ?? "") ?? 0


switch operatorChoice {
case "+":
    print("You chose addition (+), \(firstNum) + \(secondNum) = \(firstNum + secondNum)")  // \(firstNum) means the actual input, also the \(firstNum + secondNum) does the actual math
case "-":
    print("You chose subtraction (-), \(firstNum) - \(secondNum) = \(firstNum - secondNum)")
case "*":
    print("You chose multiplication (*), \(firstNum) * \(secondNum) = \(firstNum * secondNum)")
case "/":
    if secondNum != 0 {
        print("You chose division (/), \(firstNum) / \(secondNum) = \(firstNum / secondNum)")
    } else {
        print("Error: Division by zero is not allowed.")
    }
default:
    print("Invalid operator")
}
