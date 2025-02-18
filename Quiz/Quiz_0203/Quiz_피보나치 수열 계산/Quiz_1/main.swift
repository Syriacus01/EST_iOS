/*
 과제 : 피보나치 수열 계산 출력
 */
import Foundation

var oneNum = 1 // 첫 번째 수열 1
var twoNum = 2 // 두 번째 수열 2
var total = 0  // 토탈 값을 0으로 초기화해둠

for count in 0..<10 { // 0부터 10까지 총 10번 반복
total += oneNum // oneNum을 total값에 누적
let threeNum = oneNum + twoNum // 다음 반복 횟수에서 twoNum에 값을 옮기기 위해 oneNum + twoNum 값을 새로운 threeNum에 합쳐둠
oneNum = twoNum // oneNum을 twoNum의 값으로 변경
twoNum = threeNum // twoNum을 threeNum의 값으로 변경
}
// 첫 번째 반복 : oneNum = 1, twoNum = 2
// 두 번째 반복 : oneNum = 2, twoNum = 3
// 세 번째 반복 : oneNum = 3, twoNum = 5
// 네 번째 반복 : oneNum = 5, twoNum = 8
// 다섯 번째 반복 : oneNum = 8, twoNum = 13
// 여섯 번째 반복 : oneNum = 13, twoNum = 21
// 일곱 번째 반복 : oneNum = 21, twoNum = 34
// 여덟 번째 반복 : oneNum = 34, twoNum = 55
// 아홉 번째 반복 : oneNum = 55, twoNum = 89
// 마지막 : oneNum = 89, twoNum = 144
// 즉, 1+2+3+5+8+13+21+34+55+89 = 231

print("피보나치 수열 : \(total)")  // 10번 반복된 total 값을 출력
