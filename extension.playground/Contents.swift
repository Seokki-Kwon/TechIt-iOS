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

protocol NoExtension {
    var test: Int {get}
    func testFunction(str: String) -> String
}

extension NoExtension {
    var test: Int {
        get {
            return 7
        }
    }
    
    func testFunction(str: String) -> String {
        return "test \(str)"
    }
}

// 이미 extension 으로 구현을 해놨기때문에 에러가 안남
class MyExtensionClass : NoExtension {
    var test: Int {
        get {
            return 0
        }
    }
}

let myExtensionClass = MyExtensionClass()
myExtensionClass.test
