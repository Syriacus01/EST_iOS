//  FunctiongEx.swift
//  0205

struct FunctiongEx { // 나중에 찾기 쉽게 스트럭트 그리고 파일명을 넣고 시작해준다
    
    func run() { // 실행시키고자 하는걸 쓰는 곳
        
        print("run FunctionEx")
        example01(title: "더하기 예제") // 밑에 매개변수랑 타입 다 적었는데 여기에 아무것도 안 넣으면 오류뜸
        // title 이라는 것이 "제목"을 받아야한다고 표시해둬야함
        // 매개변수가 한 개만 있어도 정확하게 넣어줘야함
        // 두개면 매개변수 어디에 뭘 넣을거야 라고 해야함
        //cannot find 'example01' in scope // 밑에 아무것도 안 쓰면 이런 오류가 남. 찾을 수 없다는 뜻

    }
}

extension FunctiongEx { // 위에 쓴게 너무 지저분하면 extension 파일이름 으로 분리해주면됨
    
    func example01(title: String) {
        print("첫 번째 예제는 \(title)입니다.")
        
        let value1: Int = 100
        let value2: Int = 11
        let total = add(x:value1 , y:value2)
        print("\(value1) + \(value2) = \(total)입니다.")
        // 직접 x 에 값을 안 넣고 그 위에 value1 해서 값 넣어줘도됨 근데 값 넣을거면 밑에 x에는 변수이름 넣어줘야함
        // x: value1 이렇게
    }
    func add(x: Int, y:Int) -> Int { // 위에 수식을 쓰기 위해 add 타입으로 선언해보기
        // 기본 형태는 func 이름 (매개변수) -> 변환타입
        // 변환값 의 형태임
        return x + y
    }
}
