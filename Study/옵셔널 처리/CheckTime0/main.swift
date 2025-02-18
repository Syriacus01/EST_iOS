/*
 체크 타임 문제
 문제 1) 옵셔널 처리
 사용자가 입력한 이름을 옵셔널로 받아서 출력
 이름이 입력되지 않으면 "Unknows" 출력
 readLine()과 ?? 활용
 
 의사 코드
 1. 입력
 1-1 사용자가 입력할 칸 출력
 2. 출력
 2-1 사용자가 입력한 값을 옵셔널로 받아서 출력
 2-2 옵셔널 바인딩에 리드라인 추가해서 입력값받고 입력되지 않으면 언노운 출력
*/

var name: String? = nil

print("이름을 입력하세요:")
if let input = readLine() {
    print("입력된 이름: \(input)")
} else {
    print(name ?? "Unknown")
}


