/*
 체크 타임 문제
 문제) 1~100까지 홀수만 누적 합산하여 출력
 - for-in반복문으로 1~100까지 홀수만 total 변수에 누적하여 출력
 - 홀수 조건은 i % 2 != 0 으로 확인하기
 
 의사 코드
 1. 입력
 - for-in 반복문 사용
 - total 변수 0으로 초기화 후 출력
 - 홀수 조건은 i % 2 != 0임
 */

var total = 0
for number in 1...100 {
    if number % 2 != 0 {
        total += number
    }
}
print("Total: \(total)")


