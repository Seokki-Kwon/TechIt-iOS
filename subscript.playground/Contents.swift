import UIKit
import Foundation

/**
 서브스크립트(Subscript)
 컬렉션의 요소에 접근
 클래스, 구조체, 열거형은 콜렉션/리스트/시퀀스의 멤버 요소에
 접근할 수 있는 단축 표현
 */

struct MySubscript {
    var arr: [String] = []
    
    subscript(index: Int) -> String {
        return arr[index]
    }
}

extension String {
    subscript(reCount: Int) -> String {
        var str = ""
        for _ in 0..<reCount {
            str += self
        }
        return self
    }
}

let mysc = MySubscript(arr:["Park", "Kim", "Lee"])
mysc[0]
mysc[1]


