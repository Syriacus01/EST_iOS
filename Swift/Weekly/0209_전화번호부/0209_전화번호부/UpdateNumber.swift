//  UpdateNumber.swift

import Foundation

class UpdateNumber: PhoneBookMenu {
    func run() {
        print("4. 번호 수정")
        print("이름 :", terminator: "")
        let name = readLine() ?? ""
        if name == "" {
            print("다시 입력해주세요.")
            return
        }
        if PhoneBook.shared.directory[name] != nil {
            print("수정하고자 하는 번호 :", terminator: "")
            let userNumber = readLine() ?? ""
            if let newNumber = Int(userNumber) {
                PhoneBook.shared.directory[name] = newNumber 
                print("수정되었습니다.")
            }
            else {
                print("다시 입력해주세요.")
            }
        }
        else {
            print("존재하지 않는 번호입니다.")
        }
    }
}
