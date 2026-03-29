import SwiftUI

struct QuestionView: View {
    var questions: Question
    @State var selectedAnswer: String = ""
    @State var hasAnswered: Bool = false
    
    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    var body: some View {
        VStack (spacing:30){
                Text(questions.question)
                .font(.title2)
                .bold()
                .multilineTextAlignment(.center)
                .padding()
                .background(Color(.systemBackground))
                .clipShape(RoundedRectangle(cornerRadius:15))
                .shadow(radius:5)
            
            LazyVGrid(columns:columns, spacing: 15) {
                Button {
                    selectedAnswer = "A"
                    hasAnswered = true
                } label: {
                    Text("A. \(questions.A)")
                        .multilineTextAlignment(.center)
                        .padding()
                        .frame(maxWidth: .infinity, minHeight: 80)
                }
                .clipShape(RoundedRectangle(cornerRadius:15))
                .overlay(
                    RoundedRectangle(cornerRadius:15)
                        .stroke(Color(red:63/225, green:21/225, blue:22/225), lineWidth:2))
                
                Button {
                    selectedAnswer = "B"
                    hasAnswered = true
                } label: {
                    Text("B. \(questions.B)")
                        .multilineTextAlignment(.center)
                        .padding()
                        .frame(maxWidth: .infinity, minHeight: 80)
                }
                .clipShape(RoundedRectangle(cornerRadius:15))
                .overlay(
                    RoundedRectangle(cornerRadius:15)
                        .stroke(Color(red:63/225, green:21/225, blue:22/225), lineWidth:2))
                
                Button {
                    selectedAnswer = "C"
                    hasAnswered = true
                } label: {
                    Text("C. \(questions.C)")
                        .multilineTextAlignment(.center)
                        .padding()
                        .frame(maxWidth: .infinity, minHeight: 80)
                }
                .clipShape(RoundedRectangle(cornerRadius:15))
                .overlay(
                    RoundedRectangle(cornerRadius:15)
                        .stroke(Color(red:63/225, green:21/225, blue:22/225), lineWidth:2))
                
                Button {
                    selectedAnswer = "D"
                    hasAnswered = true
                } label: {
                    Text("D. \(questions.D)")
                        .multilineTextAlignment(.center)
                        .padding()
                        .frame(maxWidth: .infinity, minHeight: 80)
                }
                .clipShape(RoundedRectangle(cornerRadius:15))
                .overlay(
                    RoundedRectangle(cornerRadius:15)
                        .stroke(Color(red:63/225, green:21/225, blue:22/225), lineWidth:2))
            }
            .foregroundStyle(Color.black)
            if hasAnswered {
                if selectedAnswer == "\(questions.answer)" {
                    Text("Correct!")
                        .foregroundStyle(Color.green)
                        .font(.headline)
                } else { Text("Try Again!")
                        .foregroundStyle(Color.red)
                        .font(.headline)
                }
            }
        }
        .padding()
    }
}
