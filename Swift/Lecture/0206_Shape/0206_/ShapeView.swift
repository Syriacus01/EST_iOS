//
//  ShapeView.swift

class ShapeView {
    // Array 선언
    // 빈 배열 생성
    // let shapeList = [Shape]()
    // 선과 동시에 초기화
    // let shapeList = [Circle(), Rectangle(), Circle(), Circle()]
    // 빈 배열에 데이터 추가: append() 사용.
    // 5회 반복 Shape 생성
    // 1번째 생성 할 객체 타입 선택 (1)Circle (2)Rectangle: 1
    // 리스트에 Circle 객체 추가 완료!
    // 2번째 생성 할 객체 타입 선택 (1)Circle (2)Rectangle: 2
    // 리스트에 Rectangle 객체 추가 완료!
    // 3번째 생성 할 객체 타입 선택 (1)Circle (2)Rectangle:
    
    var shapeList: [Shape]
    
    init() {
        // init()함수의 목적은 초기화
        shapeList = [Circle(), Rectangle()]
    }
    
    func showList() {
        for shape in shapeList {
            shape.draw()
        }
    }
    
    func appendShpe(choice: Int) {
        if choice == 1 {
            shapeList.append(Circle())
            print("리스트에 Circle 객체 추가 완료!")
        } else if choice == 2 {
            shapeList.append(Rectangle())
            print("리스트에 Rectangle 객체 추가 완료!")
        }
    }
    
    func main() {
        for i in 1...5 {
            print("\(i)번째 생성 할 객체 타입 선택 (1)Circle (2)Rectangle", terminator: ": ")
            let choice: Int = Int(readLine() ?? "") ?? 0
            appendShpe(choice: choice)
        }
        
        showList()
        
    }
}
