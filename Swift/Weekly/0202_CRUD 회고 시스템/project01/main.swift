/*
 [Weekly Project] : CRUD 회고 시스템 구현
 */

print("--- 오늘의 회고 ---") // print() 사용하여 실행하면 바로 시스템 설명문 나오게 하기
print("1. 회고 추가")
print("2. 회고 조회")
print("3. 회고 수정")
print("4. 회고 삭제")
print("5. 전체 조회")
print("6. 종료") // 회고 시스템 메뉴 목록 미리 보여주기

var oneDate: [String: String] = [:]
// 변수 oneDate 라는 딕셔너리에서 String 형태의 key로 String 타입의 값을 저장하기 위한 빈 딕셔너리이며, 회고 시스템을 구현할때 추가, 수정, 삭제한 값들을 모두 저장하기 위해서는 while문 밖에 선언해야함.
while true { // 6을 눌러서 종료하기 전까지는 1~5번의 메뉴가 무한반복되어야 하기때문에 while문의 조건을 항상 true로 해서 무한루프를 형성함.
print("메뉴를 선택하세요 : ", terminator: "") // 메뉴를 선택할 수 있는 칸 만들기
    if let userMenu = readLine(), let menuNum = Int(userMenu) { // 사용자가 입력한 메뉴 번호를 정수로 변환함.
        if menuNum == 1 { // 사용자가 입력한 번호가 1일 때 실행하기
            print("1. 회고 추가") // 사용자가 입력한 메뉴가 뭔지 설명해주기
            print("추가를 원하시는 날짜를 입력해주세요. ex) 02.03 :", terminator: "") // 사용자가 추가를 원하는 날짜를 입력할 수 있는 칸 만들기
            if let userDate = readLine() { // 사용자가 입력할 수 있게 readLine() 사용. 여기서 readLine()의 기본값은 String?이기때문에 let date = String(userDate)로 변환할 필요가 없음
                print("내용:", terminator: "")
                if let userContent = readLine() { //사용자가 내용을 입력할 수 있게 readLine() 사용.
                    oneDate["userDate"] = "userContent" // oneDate라는 딕셔너리에 userDate 라는 키로 호출해서 userContent에 사용자가 입력한 내용(값)을 저장함.
                    print("회고가 추가되었습니다.") // 정상적으로 추가되었다는 것을 표시해주기
                }
            }
        }
        else if menuNum == 2 { // 사용자가 입력한 번호가 2일 때 실행하기
            print("2. 회고 조회")
            print("조회하고 싶은 날짜를 입력해주세요. ex) 02.03 :", terminator: "")
            if let userDate = readLine() {
                if let content = oneDate[userDate] { // oneDate라는 딕셔너리에 값 중 사용자가 입력한 userDate에 맞는 값으로 가져옴
                    print(content) // 가져온 content 값을 출력
                }
            }
        }
        else if menuNum == 3 { // 사용자가 입력한 번호가 3일 때 실행하기
            print("3. 회고 수정")
            print("수정하고자 하는 날짜를 입력해주세요. ex) 02.03 :", terminator: "")
            if let userDate = readLine() {
                    print("내용:", terminator: "")
                    if let newContent = readLine() {
                        oneDate["userDate"] = "newContent" // 수정한 내용을 oneDate라는 딕셔너리에 있는 userDate 키에 있는 값을 newContent로 변경
                        print("회고가 수정되었습니다.")
                    }
                }
            }
            else if menuNum == 4 { // 사용자가 입력한 번호가 4일 때 실행하기
            print("4. 회고 삭제")
            print("삭제하고자 하는 날짜를 입력해주세요. ex) 02.03 :", terminator: "")
            if let userDate = readLine() {
                oneDate.removeValue(forKey: userDate) // 딕셔너리에서 특정 키와 해당 값을 삭제해주는 removeValue(forKey:) 사용. 사용자가 입력한 userDate의 해당 값을 삭제함
                print("회고가 삭제되었습니다.")
            }
        }
        else if menuNum == 5 { // 사용자가 입력한 번호가 5일 때 실행하기
            print("5. 전체 조회")
            print("oneDate") // oneDate라는 딕셔너리에 저장된 값을 가져옴
        }
        else if menuNum == 6 { // 사용자가 입력한 번호가 6일 때 실행하기
            print("회고 시스템이 종료됩니다.")
            print("다시 실행을 원하시면 껐다가 켜주세요.")
            break // while 문의 무한루프를 즉시 종료해주는 break 사용
        }
    }
}
