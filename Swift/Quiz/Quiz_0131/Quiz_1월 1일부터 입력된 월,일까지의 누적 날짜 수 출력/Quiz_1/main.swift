/*
 퀴즈 1. 특정 월, 일을 입력 받아서 1월 1일부터 입력된 월,일까지의 누적 날짜 수 출력
 - readLine() 으로 사용자 입력 받기
 - int 사용하여 정수로 변환하기 : int 변환은 초기화 필수임, 초기값 설정안하면 오류남
 - index에서 해당 월의 일수를 추출하고 내가 입력한 월,일만큼 더해서 값 알려주기
 */

let monthDays: [Int] = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
print("월 :", terminator: " ")
//배열에 각 월의 일수를 저장하고 사용자가 월을 입력할 수 있게 칸 만들기

if let userMonth = readLine(), let month = Int(userMonth) {
print("일 : (\(monthDays[month-1]))", terminator: " ")
//사용자가 입력한 월을 정수로 변환해주고 사용자가 일을 입력할 수 있게 칸 만들기

if let userDays = readLine(), let days = Int(userDays){
print("입력한 날짜: \(month)월 \(days)일")
// total을 days로 초기화 
// for-in 반복문을 사용하고, 사용자가 입력한 월이 포함되지 않도록 -1 해주기
// 마지막에는 total 값에 현재 일수를 더하기
        
var total = days
for days in 0..<month-1 {
total += monthDays[days] }

print("1월 1일부터의 누적일수: \(total)")
}
}
