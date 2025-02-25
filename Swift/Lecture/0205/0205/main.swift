// 1. main에는 구조체 객체를 선언
// 2. 그리고 함수를 호출
print("실행하고 싶은 에제 번호:", terminator: "")
let no = Int(readLine() ?? "0")
if no == 1 { // 계속 주석 달지말고
    // 객체의 참조 변수를 이용해서 호출하기
    let ex01 = FunctiongEx() // var, let 상관없음
    ex01.run() // 이렇게 하면 함수를 불러와서 hello world 밑에 FunctionEx 파일 내용을 호출해서 가져옴
    // Cmd 누르고 run() 부분 누르면 해당 페이지로 링크가 달려서 넘어감
}
if no == 2 {
    // 파일이름.run() 이건 객체 선언과 동시에 바로 호출하는 것
    FunctionEx02().run()
}
if no == 3 {
    FunctionEx03()
}
