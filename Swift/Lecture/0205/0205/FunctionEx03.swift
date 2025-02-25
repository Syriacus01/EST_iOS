//  FunctionEx03.swift
//  0205

 struct FunctionEx03 {
    init () {
        // 객체(인스턴스)를 생성하면 바로 실행해주는 코드
        // 멤버를 초기화 시키는 용도
        print("FunctionEx03 init 실행")
        
        if let result = getName() {
            print("\(result)님 안녕하세요!")
        } else {
            print("잘못 입력하셨습니다.")
        }
     }
}
 extension FunctionEx03 {
    
     func getName() -> String? {
         return "홍길동"
     }
}
