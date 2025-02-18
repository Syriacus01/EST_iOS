//  FunctionEx02.swift
//  0205

struct FunctionEx02 {
    func run() {
        // 만약 main이라고 해서 이게 메인 페이지가 되는게 아님 이름만 main인 것임 여길 메인으로 쓰고 싶으면 @main 쓰기
        print("FunctionEx02실행")
        
        // 다중 반환 값 예제
        let userInfo = getUserInfo()//  변수 옆은 명사로 시작하지만, = 옆에는 함수로 만들거라 동사로 시작
        print("\(userInfo.name)의 나이는 \(userInfo.age)살")
    }
    
    //이름과 나이를 입력 받는 함수
    func getUserInfo() -> (name: String, age: Int) {
        print("이름:", terminator: "")
        let name = readLine() ?? ""
        print("나이:", terminator: "")
        let age = Int(readLine() ?? "") ?? 0
        
        return (name, age)
    }
}

