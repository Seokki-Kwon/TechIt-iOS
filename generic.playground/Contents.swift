import UIKit
import Foundation

/**
 제너릭 (Generics)
 - 어떤 타입에도 유연하게 대응할 수 있는 코드를 구현
 - 구현한 기능과 타입은 재사용하기 쉽고, 코드의 중복을 줄일 수 있음(추상적 표현)
 
 제너릭 타입:
 타입이름<타입 매개변수(Int, Double, String...)>
 
 제너릭 메서드:
 메서드이름<타입 매개변수> (메서드 매개변수...) {...}
 
 코드를 구현하다가 자료형만 다르게 구현해야 하는경우
 */


// 제너릭함수
// T: 타입 으로 해주는 경우 타입을 좁힐 수 있다.
//func swapTwoValues<T: BinaryInteger>(_ a: inout T, _ b: inout T){
//    let temporaryA = a
//    a = b
//    b = temporaryA
//}
//
//var someInt = 3
//var anotherInt = 107
//swapTwoValues(&someInt, &anotherInt)
//print(someInt, anotherInt)
//
//// 제너릭타입
//struct Stack<Element> {
//    var items: [Element] = []
//    mutating func push(_ item: Element) {
//        items.append(item)
//    }
//    mutating func pop() -> Element {
//        return items.removeLast()
//    }
//}
//
//var myStack = Stack<String>()
//myStack.push("Park")
//myStack.push("Kim")
//myStack.push("Lee")
//myStack.items
//myStack.pop()
//
//var anyStack = Stack<Any>()
//anyStack.push("Hello")
//anyStack.push(1.0)
//anyStack.push(5)
//anyStack.items
//
//// 제너릭 확장(익스텐션)
//extension Stack {
//    var topElement: Element? {
//        return self.items.last
//    }
//}
//myStack.topElement

// 제너릭 타입 제약 (프로토콜/클래스)

// 제너릭 예제1

//struct Stack<T> {
//    var items = [T]()
//    mutating func push(_ item: T) {
//        items.append(item)
//    }
//    mutating func pop() -> T {
//        return items.removeLast()
//    }
//}
//
//var intStack = Stack<Int>()
//intStack.push(3)
//intStack.push(5)
//print(intStack.pop()) // 5
//
//var stringStack = Stack<String>()
//stringStack.push("Hello")
//stringStack.push("World")
//print(stringStack.pop())
//
//// 제너릭 예제2
//func swap<T>(_ a: inout T, _ b: inout T) {
//    let temporaryA = a
//    a = b
//    b = temporaryA
//}
//var a = 10
//var b = 20
//swap(&a, &b)
//print(a, b)

// 제너릭 예제3

//protocol StackProtocol {
//    associatedtype T
//    var items: [T] {get  set}
//    mutating func push(item: T)
//    mutating func pop() -> T?
//    mutating func peek() -> T?
//    mutating func isEmpty() -> Bool
//}
//
//struct Stack<T>: StackProtocol {
//    var items: [T] = []
//
//    mutating func push(item: T) {
//        items.append(item)
//    }
//
//    mutating func pop() -> T? {
//        items.popLast()
//    }
//
//    func peek() -> T? {
//        items.last
//    }
//
//    func isEmpty() -> Bool {
//        items.isEmpty
//    }
//}
//
//var myStack = Stack<Int>()
//myStack.push(item: 1)
//myStack.push(item: 2)
//myStack.push(item: 3)
//
//myStack.pop()
//
//myStack.peek()
//
//myStack.isEmpty()

// 제너릭 예제4

//protocol QueueProtocol {
//    associatedtype T
//    var items: [T] { get set }
//    func enqueue(_ item: T)
//    func dequeue() -> T?
//    func front() -> T?
//}
//
//class Queue<T>: QueueProtocol {
//    var items: [T] = []
//
//    func enqueue(_ item: T) {
//        items.append(item)
//    }
//
//    func dequeue() -> T? {
//        if let first = items.first{
//            return items.removeFirst()
//        } else{
//            return nil
//        }
//    }
//
//    func front() -> T? {
//        items.first
//    }
//}
//
//extension QueueProtocol {
//    var isEmpty: Bool {
//        get {
//            items.isEmpty
//        }
//    }
//}
//
//var queue = Queue<String>()
//queue.enqueue("A")
//queue.enqueue("B")
//queue.enqueue("C")
//print(queue.dequeue()) // A
//print(queue.front()) // B
//print(queue.isEmpty) // false

// 제네릭 예제5

//func printType<T>(_ element: T) {
//    print("The type of \(element) is \(type(of: element))")
//}
//
//printType(3) // The type of 3 is Int
//printType("Hello") // The type of Hello is String
//printType(true) // The type of true is Bool

// 제네릭 예제6

//class Node<K, V> {
//    var key: K
//    var value: V
//
//    init(key: K, value: V) {
//        self.key = key
//        self.value = value
//    }
//}
//
//let node = Node(key: "name", value: "Alice")
//print(node.key) // name
//print(node.value) // Alice

// 제네릭 예제7

//func isEqual<T: Equatable>(_ t1: T, _ t2: T) -> Bool {
//    return t1 == t2
//}
//
//
//print(isEqual(1, 1)) // true
//print(isEqual("Hello", "World")) // false
//print(isEqual(true, false)) // false

// 제네릭 예제8

//func isInt<T>(_ a: T) -> Bool {
//    a is Int
//}
//
//print(isInt(3)) // true
//print(isInt("Hello")) // false
//print(isInt(true)) // false

// 제네릭 예제9

//func castToInt<T>(_ a: T) -> Int? {
//    guard a is Int else {return nil}
//    return a as! Int
//}
//
//print(castToInt(3)) // 3
//print(castToInt("Hello")) // nil
//print(castToInt(true)) // nil

// 제네릭 예제10

//func swapFirstAndLast<T>(_ array: inout [T]) {
//    array.swapAt(0, array.count - 1)
//}
//
//var array = [1, 2, 3, 4, 5]
//swapFirstAndLast(&array)
//print(array) // [5, 2, 3, 4, 1]

// 제네릭 예제11

//let array = [1, 2, 3, 4, 5]
//printReverse(array)
//// 5
//// 4
//// 3
//// 2
//// 1
//
//func printReverse<T>(_ array: [T]){
//    array.reversed().forEach {print($0)}
//}

// 제네릭 예제12

//class Node<T> {
//    var data: T?
//    var next: Node?
//    init(data: T?, next: Node? = nil) {
//        self.data = data
//        self.next = next
//    }
//}
//
//// head: 가장 첫 노드를 가리키는 프로퍼티
//class LinkedList<T> {
//    private var head: Node<T>?
//
//    func append(data: T?){
//        // head가 없는경우 Node를 head로 지정
//        if head == nil {
//            head = Node(data: data)
//            return
//        }
//        // 이미 head가 존재하는 경우
//        var node = head
//        // node를 바꿔가면서 계속 다음값을 찾아감
//        while node?.next != nil {
//            node = node?.next
//        }
//
//        // next가 nil 인 노드에
//        node?.next = Node(data: data)
//    }
//}

class Node<T> {
    var value: T // 해당 노드의 값
    var next: Node? // 다음 노드 자체를 가지고있음
    
    init(value: T, next: Node? = nil) {
        self.value = value
        self.next = next
    }
}

struct LinkedList<T> {
    private var head: Node<T>? // 리스트의 첫번째 노드 -> 유실되면 안됨
    
    // append(노드를 추가)
    mutating func append(_ value: T){
        let newNode = Node(value: value) // 추가할 노드
        if head == nil { // 리스트가 비어있는 경우
            head = newNode
            return
        }
        
        var current = head // 헤드값을 잠시 복제
        // 끝까지 도달할때까지 -> next가 nil 이라면 끝에있는 노드
        while current?.next != nil {
            current = current?.next // current를 계속 다음노드로 바꿔줌
        }
        // 끝노드에 도달한 경우 해당 노드이 next에 새로운 노드를 추가
        current?.next = newNode
    }
    
    // insert(원하는 위치에 노드를 삽입)
    mutating func insert(_ value: T, at index: Int){
        let newNode = Node(value: value)
        
        // 첫번째 요소에 삽입
        if index == 0 {
            newNode.next = head // 새로운 노드의 next를 head로
            head = newNode // head를 newNode로 교체
            return
        }
        
        var current = head
        var i = 0
        var previous: Node<T>?
        // index 보다 적을때까지 루프를 돈다
        while current?.next != nil && i < index {
            previous = current
            current = current?.next
            i += 1
        }
        // 새로운 노드를 중간에 끼워넣기
        previous?.next = newNode
        newNode.next = current
    }
    
    
    func nodeAt(_ index: Int) -> Node<T>? {
        var i = 0
        var current = head
        while current?.next != nil && i < index {
            current = current?.next
            i += 1
        }
        return current
    }
    
    mutating func remove(at index: Int) -> T? {
        if index == 0 {
            let value = head?.value
            head = head?.next
            return value
        }
        
        var current = head
        var i = 0
        var previous: Node<T>?
        while current?.next != nil && i < index {
            previous = current
            current = current?.next
            i += 1
        }
        previous?.next = current?.next
        return current?.value
    }
}

var list = LinkedList<Int>()
list.append(1)
list.append(2)
list.append(3)
list.insert(55, at: 2)
list.nodeAt(0)

