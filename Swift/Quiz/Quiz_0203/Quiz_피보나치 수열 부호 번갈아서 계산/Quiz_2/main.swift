/*
 과제 : 피보나치 수열 부호 번갈아서 계산 출력
 */

import Foundation

var oneNum = 1 // 첫 번째 수열 1
var twoNum = 2 // 두 번째 수열 2
var total = 0  // 토탈 값을 0으로 초기화해둠

for count in 0..<10 { // 0부터 10까지 총 10번 반복
if count % 2 == 0 { // 나머지가 짝수면
total += oneNum // total 값에 oneNum값을 누적함
} else { // 짝수가 아니면
total -= oneNum // total 값에 oneNum값을 빼고 누적함
}
let threeNum = oneNum + twoNum
// 다음에 twoNum의 값을 ondNum에 옮기기 위해
// oneNum + twoNum 값을 새로운 threeNum에 합쳐둠
oneNum = twoNum // oneNum을 twoNum의 값으로 변경
twoNum = threeNum  // twoNum을 threeNum의 값으로 변경
}
// 첫 번째 반복 : oneNum = 1, twoNum = 2 → total = 0 - 1 = -1
// 두 번째 반복 : oneNum = 2, twoNum = 3 → total = -1 + 2 = 1
// 세 번째 반복 : oneNum = 3, twoNum = 5 → total = 1 - 3 = -2
// 네 번째 반복 : oneNum = 5, twoNum = 8 → total = -2 + 5 = 3
// 다섯 번째 반복 : oneNum = 8, twoNum = 13 → total = 3 - 8 = -5
// 여섯 번째 반복 : oneNum = 13, twoNum = 21 → total = -5 + 13 = 8
// 일곱 번째 반복 : oneNum = 21, twoNum = 34 → total = 8 - 21 = -13
// 여덟 번째 반복 : oneNum = 34, twoNum = 55 → total = -13 + 34 = 21
// 아홉 번째 반복 : oneNum = 55, twoNum = 89 → total = 21 - 55 = -34
// 마지막 반복 : oneNum = 89, twoNum = 144 → total = -34 + 89 = 55
// 즉, 1-2+3-5+8-13+21-34+55-89 = -55

print("피보나치 수열 : \(total)")  // 10번 반복된 total 값을 출력
