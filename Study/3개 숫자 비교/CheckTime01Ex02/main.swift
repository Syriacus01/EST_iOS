/*
 체크 타임 문제
 문제 ) 3개의 숫자를 입력받아 크기를 비교
 - if else 조건문 사용해서 비교하기
 - 숫자 입력 받기 위해 readLine()이랑 옵셔널 바인딩 활용하기

---------------------------------------
 의사 코드
 1. 입력
 - 3개 숫자 입력 받는 칸 만들기 readLine() 사용
 - readLine() 사용은 무조건 String?(옵셔널)로 반환하니까 숫자로 변환하려면 Int 사용, readLine()사용하려면 옵셔널 값을 반드시 언래핑해야함
 - 즉, 옵셔널 처리도 해야하고 사용자 입력값도 받고 이걸 숫자로 변환하려면 무조건
 if let input = readLine(), let age = Int(input) 이 문장을 쓰고 비교를 원한다면 그 밑에 if-else 조건문을 넣으면됨.
 
 2. 비교
 - 세 개의 숫자를 비교해야하니까 조건을 여러개 해야함
 - 그럴 때는 if-else 조건문에 else if로 계속 조건을 달면됨
 - 비교연산자를 만들 때는 사용자가 입력한 값 ex)number1, number2 가 아닌 내가 숫자로 변환해달라고 한 one, two 를 넣어야함
 
 3. 출력
 if-else 문에서 if 뒤에 바로 비교연산자 써서 비교하면됨. 그리고 print("~") 이런식으로 출력하고자 하는 내용을 넣으면 끝
 하지만 출력하고자 하는 내용 옆에 사용자가 입력한 값을 넣어야하니까 문자열 보간법을 사용해서 하면됨.
 print("큰 수: \(~~), 중간 수: \(~~), 작은 수: \(~~)")이런 식으로!
 */

print("첫 번째 숫자를 입력하세요:", terminator: "")
if let number1 = readLine(), let one = Int(number1) {
    print("두 번째 숫자를 입력하세요:", terminator: "")
    if let number2 = readLine(), let two = Int(number2) {
        print("세 번째 숫자를 입력하세요:", terminator: "")
        if let number3 = readLine(), let three = Int(number3) {
            if one > two, two > three {
                           print("큰 수: \(one), 중간 수: \(two), 작은 수: \(three)")
                       } else if one > three, three > two {
                           print("큰 수: \(one), 중간 수: \(three), 작은 수: \(two)")
                       } else if two > one, one > three {
                           print("큰 수: \(two), 중간 수: \(one), 작은 수: \(three)")
                       } else if two > three, three > one {
                           print("큰 수: \(two), 중간 수: \(three), 작은 수: \(one)")
                       } else if three > one, one > two {
                           print("큰 수: \(three), 중간 수: \(one), 작은 수: \(two)")
                       } else {
                           print("큰 수: \(three), 중간 수: \(two), 작은 수: \(one)")
                       }
        }
    }
}

