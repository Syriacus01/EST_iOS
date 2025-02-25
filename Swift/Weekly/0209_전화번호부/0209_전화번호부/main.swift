//  main.swift

import Foundation

protocol PhoneBookMenu {
    func run()
}

class PhoneBook {
    static let shared = PhoneBook()
    var directory: [String: Int] = [:]
}
class MainMenu {
    func showMenu() {
        while true {
            print("---전화번호부---")
            print("원하시는 메뉴의 번호를 입력해주세요.")
            print("1. 번호 추가", terminator: " ")
            print("2. 번호 삭제", terminator: " ")
            print("3. 번호 조회", terminator: " ")
            print("4. 번호 수정", terminator: " ")
            print("5. 전체 조회", terminator: " ")
            print("6. 종료")
            print("메뉴:", terminator: "")
            
            let userNumber = readLine() ?? ""
            let menuNumber = Int(userNumber)
            
            if let pick = menuNumber {
                switch pick {
                case 1:
                    let addMenu = AddNumber()
                    addMenu.run()
                case 2:
                    let deleteMenu = DeleteNumber()
                    deleteMenu.run()
                case 3:
                    let searchMenu = SearchNumber()
                    searchMenu.run()
                case 4:
                    let updateMenu = UpdateNumber()
                    updateMenu.run()
                case 5:
                    let listMenu = ListNumber()
                    listMenu.run()
                case 6:
                    let endMenu = End()
                    endMenu.run()
                    break
                default :
                    print("메뉴를 다시 입력해주세요.")
                }
            }
            else {
                print("메뉴에 적힌 숫자를 입력해주세요.")
            }
        }
    }
}
let mainMenu = MainMenu()
mainMenu.showMenu()
