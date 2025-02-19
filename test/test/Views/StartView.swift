import SwiftUI

struct UserProfile { // 마이메이지 더미 구조체
    var newData: Bool = false // true,false로 데이터 있고 없고를 체크하고 있으면 빨간 점 표시
}

// MARK: 기본 UI
struct StartView: View {
    @State private var userProfile = UserProfile()
    @State private var isButtonPressed = false // 버튼이 누르면 색이 변할 수 있도록 기본값 false로 설정

    var body: some View {
        NavigationStack {
            ZStack {
                Color(.systemGray6) // 배경색
                    .edgesIgnoringSafeArea(.all) // 전체적으로 배경색이 될 수 있도록하고

                VStack {
                    HStack {
                        Spacer() // 왼쪽 여백 추가해서 버튼을 오른쪽으로 보내고
                        Button(action: {
                            print("마이페이지로 이동됨") // 버튼 눌렀을 때 마이페이지로 이동되었다고 출력
                        }) {
                            ZStack {
                                Image(systemName: "person.circle")
                                    .resizable()
                                    .frame(width: 55, height: 55)

                                if userProfile.newData { // 새로운 데이터는 빨간 점으로 표시할거라
                                    Circle() // 빨간점의 위치 및 크기 잡아줌
                                        .fill(Color.red)
                                        .frame(width: 13, height: 13)
                                        .offset(x: 17, y: -20)
                                }
                            }
                        }
                        .padding(.trailing, 20)
                        .padding(.top, 10)
                    }


                    Text("Learn Run!")
                        .font(.system(size: 70, weight: .bold, design: .rounded))
                        .padding()

                    Image("run_")
                        .resizable()
                        .scaledToFit() // 원본의 비율을 유지한 상태로 크기 조절
                        .frame(width: 350, height: 350)
                        .padding()

                    NavigationLink(destination: LevelSelectionView()) {
                        // Start 버튼을 누르면 레벨 선택뷰로 이동
                        Text("Start")
                            .frame(width: 160, height: 50)
                            .background(isButtonPressed ? Color.blue : Color.clear)
                        // 버튼 안 눌렀을 때
                            .foregroundColor(isButtonPressed ? .white : .blue)
                        // 버튼 눌렀을 때
                            .cornerRadius(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.blue, lineWidth: 1)
                            ) // 버튼 테두리
                    }
                    .simultaneousGesture(TapGesture().onEnded {
                        isButtonPressed.toggle()
                    })
                    .padding(.top, 40)

                    Spacer()
                }
            }
        }
    }
}

// MARK: 미리보기
struct StartView_Previews: PreviewProvider {
    static var previews: some View {
        StartView()
    }
}
