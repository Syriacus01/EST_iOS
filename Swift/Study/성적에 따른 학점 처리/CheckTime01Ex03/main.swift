/*
 체크 타임 문제
 문제) 성적에 따른 학점 구분
 - readLine(), 옵셔널 바인딩 사용해서 입력값 처리
 - switch 문에서 범위 연산자 (...) 사용하기
 - 90 이상 A, 80이상 90미만 B, 70이상 80미만 C, 60이상 70미만 D, 60미만 F
 
 의사 코드
 1. 입력
 - 점수를 적을 수 있는 지문 만들기 readLine() 사용해서
 - readLine()은 무조건 언래핑 해야 사용 가능
 - readLine()은 반환값이 기본 String 라서 Int로 변환해줘야함 why? 사용자가 입력한 값이 숫자라해도 readLine()의 기본값은 문자열이라서 꼭 변환해야함
 
 2. 계산
 - 사용자 입력값이 무슨 학점에 해당하는지 계산해야함
 - switch문 범위 연산자 (...) 사용해야함
 
 3. 출력
 - 줄바꿈 하지 않고 바로 옆에 값이 출력되도록 해야함
 */

print("점수를 입력하세요:", terminator: "")
if let score = readLine(), let grade = Int(score) {
    switch grade {
    case 90...100:
        print("A 학점 입니다.")
    case 80...89:
        print("B 학점 입니다.")
    case 70...79:
        print("C 학점 입니다.")
    case 60...69:
        print("D 학점 입니다.")
    default:
        print("F 학점 입니다.")
    }
}

