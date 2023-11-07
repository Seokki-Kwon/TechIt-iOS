import UIKit
import Foundation

// 열거형

protocol Togglable {
    mutating func toggle()
}


enum OnOffSwitch : Togglable {
    case off, on
    // 값객체는 mutating 으로 구현
    mutating func toggle() {
        switch self {
        case .on:
            self = .off
        case .off:
            self = .on
        }
    }
}

var myswitch: OnOffSwitch = .on
myswitch.toggle()


protocol MyInitProtocol {
    init(str1: String, int1: Int)
}

class MyInitClass: MyInitProtocol {
    var str1 = ""
    var int1 = 0
    
    // required 필수 초기화
    // 모든 하위 클래스가 해당 초기화 구문을 구현해야 함을 강제
    required init(str1: String, int1: Int) {
        self.str1 = str1
        self.int1 = int1
    }
}

class MyContClass : MyInitClass {
    required init(str1: String, int1: Int) {
        super.init(str1:str1, int1: int1)
    }
}
