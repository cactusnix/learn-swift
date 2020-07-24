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
print(optionalString == nil )

var optionalName: String? = nil
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

