/*
 [02-04] Swift Array 
 */

var words = [String] () // String 타입의 단어 다섯개를 담을 배열 생성

print("원하시는 단어 다섯개를 입력해 주세요.")
print("단어 입력 후 Enter를 누르면 다음 입력창이 뜹니다.")

for count in 1...5 { // 첫번째 단어부터 다섯번째 단어를 입력받을 때까지 반복
    print("\(count)번째 단어 :", terminator: "") // 반복된 횟수 = 사용자가 입력한 단어의 수
    if let word = readLine(){ // 사용자가 추가하고 싶은 단어를 입력 받고
        words.append(word) // 사용자가 입력한 단어를 words 배열에 추가
    }
}
print("입력하신 단어 :", words)

print("조회하고 싶은 단어를 입력해주세요. :", terminator: "")

if let searc = readLine( ){ // 사용자가 조회하고 싶은 단어를 입력 받고
    if words.contains(searc){ // 사용자가 조회한 단어를 words 배열에 있는지 확인해주기
    }
    print("입력하신 \(searc)가 목록에 있습니다.")
} else {
    print("목록에 없습니다.")
}
print("삭제하고 싶은 단어를 입력해주세요. :", terminator: "")
if let delet = readLine( ){ // 사용자가 삭제하고 싶은 단어를 입력 받고
    if let userWord = words.firstIndex(of: delet){ // 사용자가 입력한 단어를 배열 속에서 일치하는 인덱스를 찾아서 가져와서
        words.remove(at: userWord) // words 배열에서 삭제해주기
        print("삭제되었습니다.")
    }
}
print("남아있는 단어 목록:", words)
