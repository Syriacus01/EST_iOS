import SwiftUI

struct QuizQuestion {
    var questionText: String
    var options: [String]
    var answer: String
}


struct QuizView: View {
    @State private var currentQuestion = QuizQuestion(
        questionText: "1 + 1 = ?",
        options: ["1", "2", "3", "4"],
        answer: "2"
    )

    @State private var selectedAnswer: String? = nil
    @State private var isAnswerChecked = false
    @State private var showHint = false
    @State private var showResultView = false

    var body: some View {
        ZStack {
            Color(.systemGray6)
                .edgesIgnoringSafeArea(.all)

            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        showHint.toggle()
                    }) {
                        Image(systemName: "lightbulb")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .padding()
                    }
                }

                Text(currentQuestion.questionText)
                    .font(.title2)
                    .multilineTextAlignment(.center)
                    .padding()

                ForEach(currentQuestion.options, id: \.self) { option in
                    Button(action: {
                        if !isAnswerChecked {
                            selectedAnswer = option
                        }
                    }) {
                        Text(option)
                            .frame(width: 250, height: 50)
                            .background(getButtonColor(for: option))
                            .foregroundColor(selectedAnswer == option ? .white : .blue)
                            .cornerRadius(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.blue, lineWidth: 2)
                            )
                    }
                    .padding(5)
                }

                Button(action: {
                    isAnswerChecked = true
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                        showResultView = true
                    }
                }) {
                    Text("확인")
                        .frame(width: 120, height: 50)
                        .background(isAnswerChecked ? (selectedAnswer == currentQuestion.answer ? Color.green : Color.red) : Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.top, 20)
                .disabled(selectedAnswer == nil)

                Spacer()
            }
            .sheet(isPresented: $showHint) {
                HintView(hintText: "힌트: 1 + 1은 2입니다!")
            }
            .fullScreenCover(isPresented: $showResultView) {
                ResultView()
            }
        }
    }

    func getButtonColor(for option: String) -> Color {
        if isAnswerChecked {
            if option == currentQuestion.answer {
                return Color.green.opacity(0.7)
            } else if selectedAnswer == option {
                return Color.red.opacity(0.7)
            }
        }
        return selectedAnswer == option ? Color.blue.opacity(0.7) : Color.white
    }
}

struct HintView: View {
    var hintText: String

    var body: some View {
        VStack {
            Text("힌트")
                .font(.title)
                .bold()
                .padding()

            Text(hintText)
                .font(.body)
                .padding()

            Spacer()
        }
    }
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView()
    }
}
