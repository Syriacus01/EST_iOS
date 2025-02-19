import SwiftUI

struct QuizProgress {
    var correctAnswers: Int = 1
    var collectedItems: [String] = ["🍀"]
    var isCompleted: Bool {
        return collectedItems.count == 4
    }
}

struct ResultView: View {
    @State private var progress = QuizProgress()
    @State private var showStartView = false

    var body: some View {
        ZStack {
            Color(.systemGray6)
                .edgesIgnoringSafeArea(.all)

            VStack {
                Text("현재 진행 상황")
                    .font(.title)
                    .bold()
                    .padding()

                ZStack {
                    Image("running_track")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 350, height: 100)

                    Image("character_running")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 80)
                        .offset(x: CGFloat(progress.correctAnswers) * 20, y: 0)
                }
                .padding()

                Text("수집한 아이템")
                    .font(.headline)
                    .padding(.top, 20)

                HStack {
                    ForEach(progress.collectedItems, id: \.self) { item in
                        Text(item)
                            .font(.largeTitle)
                    }
                }
                .padding()

                Button(action: {
                    if progress.isCompleted {
                        progress.collectedItems = ["🏅"]
                    }
                    showStartView.toggle()
                }) {
                    Text(progress.isCompleted ? "메달 받기" : "확인")
                        .frame(width: 160, height: 50)
                        .background(progress.isCompleted ? Color.orange : Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.top, 40)

                Spacer()
            }
            .fullScreenCover(isPresented: $showStartView) {
                StartView()
            }
        }
    }
}


struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView()
    }
}
