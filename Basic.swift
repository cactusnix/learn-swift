//
//  Basic.swift
//
//
//  Created by 朱嘉新 on 2020/7/13.
//

// 变量申明
print("hello Swift")
let constValue = "string"

// optional value
var optionalString: String? = "hello"
print(optionalString == nil)

var optionalName: String?
var greeting = "Hello"
// 判断 name
if let name = optionalName {
    greeting = "hello, \(name)"
} else {
    greeting = "hello, else"
}

print(greeting)

let nickname: String? = "test optional nickname"
let fullname: String = "cacutsnix"
let informalGreeting = "hi \(nickname ?? fullname)"
print(informalGreeting)

// switch
let vegetable = "red peper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That woud make a good tea sandwich.")
case let x where x.hasSuffix("peper"):
    print("Is it a spicy \(x)")
default:
    print("Everything is ok")
}

// dictionary
let interestirngNumbers = [
    "Num1": [13, 2, 3],
    "Num2": [4, 5, 6]
]

var largest = 0

for (_, numbers) in interestirngNumbers {
    for num in numbers {
        if num > largest {
            largest = num
        }
    }
}

print(largest)

// while
var n = 2
while n < 100 {
    n *= 3
}

var m = 2
repeat {
    m += 45
} while m < 100

print(m, n)

// 语法糖
var total = 0
for i in 0 ..< 4 {
    total += i
}

print("test total", total)

var total1 = 0
for i in 0 ... 6 {
    total1 += i
}

print("test total", total1)

// function
func helloWord(msg: String) -> String {
    return "Hello \(msg)"
}

print(helloWord(msg: "word"))

func returnMultiple(array: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = array[0]
    var max = 0
    var sum = 0
    for v in array {
        if v < min {
            min = v
        }
        if v > max {
            max = v
        }
        sum += v
    }
    return (min, max, sum)
}

print(returnMultiple(array: [23, 4343, 534, 2312, 55, 45634]))

func add(var1: Int, var2: Int) -> Int {
    return var1 + var2
}

func returnCanBeAdd(var1: Int, var2: Int) -> Int {
    if var1 > 10 {
        return add(var1: var1, var2: var2)
    } else {
        return 0
    }
}

print(returnCanBeAdd(var1: 9, var2: 10))
print(returnCanBeAdd(var1: 19, var2: 10))

// return function
func returnFunc() -> ((Int) -> Int) {
    func addOne(num: Int) -> Int {
        return num + 1
    }
    return addOne
}

var increment = returnFunc()

print(increment(100))

// function argument
func hasLessThanNum(list: [Int], condition: (Int, Int) -> Bool) -> Bool {
    for v in list {
        if condition(v, 100) {
            return true
        }
    }
    return false
}

func lessThanNum(var1: Int, num: Int) -> Bool {
    return var1 < num
}

print("test less than 100", hasLessThanNum(list: [3213, 53254, 333, 645], condition: lessThanNum))

// 诡异的闭包 num 作为入参，返回值在 in 后面
print([1,434,66].map({(num: Int) -> Int in
    if num % 2 == 1 {
        return 0
    } else {
        return 1
    }
}))
