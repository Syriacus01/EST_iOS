//  AddNumber.swift

import Foundation

class AddNumber: PhoneBookMenu {
    func run() {
        print("1. 번호 추가")
        print("이름 :", terminator: "")
        let name = readLine() ?? ""
        if name == "" {
            print("다시 입력해주세요.")
            return
        }
        print("번호 :", terminator: "")
        let userNumber = readLine() ?? ""
        if let number = Int(userNumber) {
            PhoneBook.shared.directory[name] = number
            print("번호가 추가되었습니다.")
        }
        else { 
            print("다시 입력해주세요")
        }
    }
}
