//
//  QuestionModel.swift
//  Flashcards
//
//  Created by Yery Castro on 13/7/23.
//

import Foundation

struct QuestionModel: Identifiable {
    let id = UUID()
    let question: String
    let questionImageName: String?
    let answer: String
    let answerImageName: String?
}
