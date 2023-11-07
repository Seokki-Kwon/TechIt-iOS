import UIKit
import Foundation

// 익스텐션 p.105

/**
 클래스에 기능을 추가하는 방법중 하나
 
 extension 클래스/구조체 이름 {
 // 새로운 기능 코드
 }
 */

extension Double {
    
    var squared: Double {
        return self * self
    }
    
    var cubed: Double {
        return self * self * self
    }
}

let myValue: Double = 3.0
print(myValue.squared)

extension Int {
    var isEven: Bool {
        return self % 2 == 0
    }
}

let myNum = 2
myNum.isEven

// 바로 Int형 값에서 확인가능
2.isEven

// 익스텐션 예제1
//protocol Animal {
//    var name: String { get }
//    func makeSound()
//}
//
//class Dog: Animal {
//    var name: String
//
//    init(name: String) {
//        self.name = name
//    }
//
//    func makeSound() {
//        print("Woof!")
//    }
//}
//
//struct Cat: Animal {
//    var name: String
//
//    func makeSound() {
//        print("Meow!")
//    }
//}
//
//enum Bird: Animal {
//    case parrot(String)
//    case sparrow(String)
//
//    var name: String {
//        switch self {
//        case .parrot(let name):
//            return name
//        case .sparrow(let name):
//            return name
//        }
//    }
//
//    func makeSound() {
//        switch self {
//        case .parrot:
//            print("Hello!")
//        case .sparrow:
//            print("Chirp!")
//        }
//    }
//}
//
//let dog = Dog(name: "Max")
//let cat = Cat(name: "Lily")
//let bird = Bird.parrot("Jack")
//
//// Animal 이라는 프로토콜에 name 프로퍼티가 이미 존재한다.
//extension Animal {
//    func introduce(){
//        print("My name is \(name)")
//    }
//}
//
//dog.introduce()     // My name is Max.
//cat.introduce()     // My name is Lily.
//bird.introduce()    // My name is Jack.

// 익스텐션 예제2

//protocol Flyable {
//    var speed: Double { get set }
//}
//
//struct Bird: Flyable {
//    var speed = 0.0
//}
//
//extension Flyable {
//    func fly(){
//        print("Flying at \(speed) km/h")
//    }
//}
//
//let bard = Bird(speed: 30)
//bard.fly()

// 익스텐션 예제3
//protocol Colorful {
//    var color: String { get set }
//}
//
//struct Flower: Colorful {
//    var color: String
//}
//
//// Colorful 이라는 프로토콜에 description 메서드를 확장하고 구현해줌
//extension Colorful {
//    var description: String {
//        get {
//            return "A \(color) thing"
//        }
//    }
//}
//
//let flower = Flower(color: "Yellow")
//print(flower.description)      // A Yellow thing

// 익스텐션 예제4

protocol Stackable {
    var items: [Int] { get set }
}

class Stack: Stackable {
    var items: [Int]
    init(items: [Int]) {
        self.items = items
    }
    
    subscript(index: Int) -> Int? {
        guard  index < items.count else {
            return nil
        }
        return items[index]
    }
}

let stack = Stack(items: [5,4,7,3,1])
print( stack[0] )   // 5


