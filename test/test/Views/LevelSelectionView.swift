import SwiftUI

struct QuizType {
    var isSwiftSelected: Bool = false
    var isITSelected: Bool = false
    var selectedLevel: Int? = nil
}


struct LevelSelectionView: View {
    @State private var quizType = QuizType()
    @State private var showNextScreen = false

    var body: some View 
        NavigationStack {
            ZStack {
                Color(.systemGray6)
                    .edgesIgnoringSafeArea(.all)

                VStack {
                    Spacer().frame(height: 30)


                    HStack(spacing: 20) {
                        Button(action: {
                            quizType.isSwiftSelected.toggle()
                            quizType.isITSelected = false
                        }) {
                            Text("Swift")
                                .frame(width: 155, height: 60)
                                .background(quizType.isSwiftSelected ? Color.blue.opacity(0.7) : Color.white)
                                .foregroundColor(quizType.isSwiftSelected ? .white : .blue)
                                .cornerRadius(10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.blue, lineWidth: 2)
                                )
                        }

                        Button(action: {
                            quizType.isITSelected.toggle()
                            quizType.isSwiftSelected = false
                        }) {
                            Text("IT")
                                .frame(width: 155, height: 60)
                                .background(quizType.isITSelected ? Color.blue.opacity(0.7) : Color.white)
                                .foregroundColor(quizType.isITSelected ? .white : .blue)
                                .cornerRadius(10)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color.blue, lineWidth: 2)
                                )
                        }
                    }
                    .padding(.bottom, 40)


                    LazyVGrid(columns: [
                        GridItem(.flexible(), spacing: 10),
                        GridItem(.flexible(), spacing: 10)
                    ], spacing: 10) {
                        ForEach(0..<4, id: \.self) { level in
                            Button(action: {
                                quizType.selectedLevel = level
                            }) {
                                Text("Lv.\(level)")
                                    .frame(width: 140, height: 120)
                                    .background(
                                        RoundedRectangle(cornerRadius: 15)
                                            .fill(quizType.selectedLevel == level ? getLevelColor(level) : Color.white)
                                    )
                                    .foregroundColor(quizType.selectedLevel == level ? .white : .black)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 15)
                                            .stroke(getLevelColor(level), lineWidth: 2)
                                    )
                            }
                        }
                    }
                    .padding(.bottom, 60)

                    NavigationLink(destination: QuizView(), isActive: $showNextScreen) {
                        Text("Start")
                            .frame(width: 180, height: 50)
                            .background((quizType.isSwiftSelected || quizType.isITSelected) && quizType.selectedLevel != nil ? Color.blue : Color.clear)
                            .foregroundColor((quizType.isSwiftSelected || quizType.isITSelected) && quizType.selectedLevel != nil ? .white : .blue)
                            .cornerRadius(10)
                            .overlay(
                                RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.blue, lineWidth: 2)
                            )
                    }
                    .disabled(!(quizType.isSwiftSelected || quizType.isITSelected) || quizType.selectedLevel == nil)
                    .padding(.top, 40)

                    Spacer().frame(height: 40)
                }
            }
        }
    }


    func getLevelColor(_ level: Int) -> Color {
        switch level {
        case 0: return Color.gray.opacity(0.5)
        case 1: return Color.blue.opacity(0.5)
        case 2: return Color.green.opacity(0.5)
        case 3: return Color.red.opacity(0.5)
        default: return Color.black.opacity(0.5)
        }
    }
}


struct LevelSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        LevelSelectionView()
    }
}
