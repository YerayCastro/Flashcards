//
//  FlashcardModel.swift
//  Flashcards
//
//  Created by Yery Castro on 13/7/23.
//

import Foundation

struct FlashcardModel: Identifiable {
    let id = UUID()
    let topic: String
    let topicDescription: String
    let topicImageName: String
    let questionsModels: [QuestionModel]
    let numberOfQuestions: Int
}
