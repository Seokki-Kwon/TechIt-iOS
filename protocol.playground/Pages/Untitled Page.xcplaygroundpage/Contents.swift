import UIKit
import Foundation
/**
 ## 프로토콜 채택 예시
 
 protocol 프로토콜 이름 {
 // 프로토콜 정의
 }
 
 class MyClass: 프로토콜 이름 {
 // 클래스 정의
 }
 
 struct MyStruct: 프로토콜 이름 {
 // 구조체 정의
 }
 
 enum MyEnum: 프로토콜 이름 {
 // 열거형 정의
 }
 */

// 프로퍼티 요구사항

protocol MyProtocol {
    var mustBeValue: Int {get set}
    var doesNotNeedToValue: Int {get}
}

protocol MyProtocolFullName {
    var fullName: String { get set }
}

struct MyStruct: MyProtocol {
    var mustBeValue: Int {
        get { return 0 }
        set {}
    }
    
    var doesNotNeedToValue: Int {
        get { return 0 }
    }
}

// 메서드 요구사항
protocol MyProtocolMethod {
    func random() -> Double
}

// 타입 메서드를 강제화
protocol MyProtocolMethod2 {
    static func randomG() -> Double
}

struct MyMethod: MyProtocolMethod, MyProtocolMethod2 {
    static func randomG() -> Double {
        return 0.0
    }
    
    func random() -> Double {
        return 0.0
    }
    
    // 타입 메서드를 구조체에서 구현하기 위해서는 static func 로 시작
    static func goodMethod() -> String {
        return "good"
    }
}

// 타입메서드
MyMethod.goodMethod()

// 인스턴스 메서드
let myMethod = MyMethod()
myMethod.random()

// 공통적으로 사용하는 메서드는 타입메서드 사용 -> 일반적으로 인스턴스 메서드 사용

print("end")

// 프로토콜 예제01
protocol Greeting {
    var name: String {get}
    func sayHello()
}

struct Person: Greeting {
    var name: String
    func sayHello() {
        print("Hello, park!")
    }
}

// 프로토콜 예제02

protocol Shape {
    var area: Double { get }
}

struct Circle: Shape {
    var radius: Double
    var area: Double {
        return .pi * radius * radius
    }
}

// 프로토콜 예제03

protocol Vehicle {
    static func makeNoise()
}

struct MyCar: Vehicle {
    static func makeNoise() {
        print("부릉")
    }
}

// 프로토콜 예제04

protocol Countable {
    static var count: Int {get set}
}

class MyCounter: Countable {
    static var count: Int = 0
}

// 프로토콜 예제05
struct Student: Equatable {
    var name: String
    var age: Int
    static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.name == rhs.name
    }
}

let alice = Student(name: "Alice", age: 20)
let bob = Student(name: "Bob", age: 21)

print(alice == bob)
