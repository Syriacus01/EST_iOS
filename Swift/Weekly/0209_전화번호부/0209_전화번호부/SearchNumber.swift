//  SearchNumber.swift

import Foundation

class SearchNumber: PhoneBookMenu {
    func run() {
        print("3. 번호 조회")
        print("이름 :", terminator: "")
        let name = readLine() ?? ""
        if name == "" {
            print("다시 입력해주세요.")
            return
        }
        if let number = PhoneBook.shared.directory[name] { 
            print("\(name): \(number).")
        }
        else {
            print("존재하지 않는 이름입니다.")
        }
    }
}
