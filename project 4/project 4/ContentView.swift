
import SwiftUI

struct ContentView: View {
    @State private var questions: [Question] = []
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(0..<questions.count, id: \.self) {
                    index in
                    NavigationLink(value: index) {
                        Text(questions[index].question)
                    }
                }
            }
        // Add navigationTitle
        // Add shuffle button in toolbar
        .navigationTitle(Text("Trivvey"))
        .navigationBarTitleDisplayMode(.large)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                Button {
                    questions.shuffle()
                } label : {
                    Image(systemName: "shuffle")
                }
            }
            
        }
        .navigationDestination(for:  Int.self) {index in
            QuestionView(questions: questions[index])
        }                // Add NavigationLink to QuestionView for each question
    }
        .onAppear {
            let url: URL = Bundle.main.url(forResource: "questions", withExtension: "json")!
            let data = try! Data(contentsOf: url)
            // decode the questions
            questions = try! JSONDecoder().decode([Question].self, from: data)
        }
    }
}
#Preview {
    ContentView()
}
