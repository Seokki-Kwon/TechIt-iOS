import UIKit
import Foundation

/**
    swift에서 문자열 처리는 Index 타입으로 접근
 */
let hello = "hello"

// 첫번째 문자열에 접근
hello[hello.startIndex]

// index(_ i:offsetBy:) -> 시작인덱스부터 떨어진위치
hello[hello.index(hello.startIndex, offsetBy: 0)]

// 익스텐션과 서브스크립틀를 이용한 문자열 접근
extension String {
    subscript(index: Int) -> Character? {
        guard index < self.count else {
            return nil
        }
        let i = self.index(self.startIndex, offsetBy: index)
        return self[i]
    }
}

// if-let 구문으로 문자열 추출
if let char = hello[0] {
    print(char)
} else {
    print("Out of range")
}
