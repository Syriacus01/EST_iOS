//  DeleteNumbe.swift

import Foundation

class DeleteNumber: PhoneBookMenu { // 번호 삭제를 위한 클래스를 선언하고 main 파일에서 선언한 프로토콜 규칙을 지키기 위해 프로토콜 이름 추가
    func run() { // 번호 삭제 메뉴 실행
        print("2. 번호 삭제")
        print("이름 :", terminator: "")
        let name = readLine() ?? "" // 사용자가 입력한 이름이 nil 값이면 기본값을 비어있는 문자열인 ""로 변환시켜주고
        if name == "" { // 사용자가 아무것도 입력하지 않았으면 다시 입력해달라고 출력함
            print("다시 입력해주세요.")
            return // 처음부터 제대로 입력했거나, 다시 입력했는데 올바르게 입력했으면 여기서 번호추가 함수는 종료가됨
        }
        if let deletedNumber = PhoneBook.shared.directory.removeValue(forKey: name) {
            // main 파일에서 선언한 싱글톤 패턴으로 선언한 딕셔너리에 사용자가 입력한 값을 키=이름 으로 호출해서 삭제하기 위해 값 삭제 메서드 사용
            print("삭제되었습니다.")
        }
        else {
            print("존재하지 않는 이름입니다.")
        }
    }
}
