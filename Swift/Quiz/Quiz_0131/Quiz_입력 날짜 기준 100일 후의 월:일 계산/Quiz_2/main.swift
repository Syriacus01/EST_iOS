/*
 퀴즈 2. 입력 받은 월,일을 기준으로 100일 후의 월,일 출력
 
 */
let monthDays: [Int] = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
print("월 :", terminator: " ")
//배열에 각 월의 일수를 저장하고 사용자가 월을 입력할 수 있게 칸 만들기

if let userMonth = readLine(), let month = Int(userMonth) {
print("일 : (\(monthDays[month-1]))", terminator: " ")
//사용자가 입력한 월을 정수로 변환해주고 사용자가 일을 입력할 수 있게 칸 만들기

if let userDays = readLine(), let days = Int(userDays){
print("입력한 날짜: \(month)월 \(days)일")
//사용자가 입력한 일을 정수로 변환해주고 사용자가 입력한 날짜가 0월0일인지 알려주기    

var total = days
for days in 0..<month-1 {
total += monthDays[days]
}
// total을 days로 초기화
// for-in 반복문을 사용하고, 사용자가 입력한 월이 포함되지 않도록 -1 해주기
// 마지막에는 total 값에 현재 일수를 더하기
total += 100
// total 값에 100을 더해서 100일 후의 월일을 찾을 수 있게 값을 만들기

var newMonth = 1
while total > monthDays[newMonth - 1] {
total -= monthDays[newMonth - 1]
newMonth += 1
}
// newMonth을 1월부터 시작할 수 있게 1로 초기화
// while 반복문을 사용해서 사용자가 입력한 월일의 누적일 수 + 100의 값을 
// 배열 속에 있는 각 월 일수의 전체 값(31,28,30 etc.)을 뺄 수 있을 때까지는 반복하게 만들고
// 각 월 일수의 값이 누적일 수 + 100의 값보다 크다면 반복을 멈추고 다음 월로 넘어가게 하기

print("\(month)월 \(days)일 기준 100일 후의 월, 일 : \(newMonth)월 \(total)일입니다.")
}
}

