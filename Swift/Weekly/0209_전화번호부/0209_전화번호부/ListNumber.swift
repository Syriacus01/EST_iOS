//  ListNumber.swift

import Foundation

class ListNumber: PhoneBookMenu {
    func run() {
        print("5. 전체 조회")
        if PhoneBook.shared.directory == [:] {
            print("전화번호부가 비어있습니다.")
        }
        else {
            PhoneBook.shared.directory.forEach { name, number in 
                print("\(name): \(number)")
            }
        }
    }
}
