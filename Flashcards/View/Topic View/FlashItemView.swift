//
//  FlashItemView.swift
//  Flashcards
//
//  Created by Yery Castro on 14/7/23.
//

import SwiftUI

struct FlashItemView: View {
    let flashCardModel: FlashcardModel
    
    var questionModels: [QuestionModel] {
        flashCardModel.questionsModels
    }
    var topic: String {
        flashCardModel.topic
    }
    var description: String {
        flashCardModel.topicDescription
    }
    var count: Int {
        flashCardModel.numberOfQuestions
    }
    var topicImageName: String {
        flashCardModel.topicImageName
    }
    
    var body: some View {
        NavigationLink(destination: {
            TheQuestionsView(
                questionModels: questionModels,
                totalNumberOfQuestions: questionModels.count,
                topic: topic)
            .navigationBarBackButtonHidden(true)
            .navigationBarTitleDisplayMode(.inline)
        }, label: {
            HStack {
                VStack(alignment: .leading, spacing: 10) {
                    Text(topic)
                        .font(.body)
                        .fontWeight(.semibold)
                    Text(description)
                        .font(.caption)
                        .fontWeight(.light)
                }
                Spacer()
                
                let dim = UIScreen.main.bounds.width / 7
                
                Image(topicImageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: dim, height: dim)
                    .cornerRadius(10)
            }
        })
    }
}

struct FlashItemView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.white.opacity(0.7)
                .ignoresSafeArea()
            FlashItemView(
                flashCardModel: FlashcardModel(
                    topic: "Countries",
                    topicDescription: "Explore geogrphical knowledge",
                    topicImageName: BigBenImage,
                    questionsModels: QuestionViewModel.getQuestionCountryModels(),
                numberOfQuestions: QuestionViewModel.getQuestionCountryModels().count))
        }
        .padding()
    }
}
