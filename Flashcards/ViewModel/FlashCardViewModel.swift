//
//  FlashCardViewModel.swift
//  Flashcards
//
//  Created by Yery Castro on 14/7/23.
//

import Foundation

class FlashCardViewModel: ObservableObject {
    @Published var flashCardModels: [FlashcardModel] = []
    
    init() {
        // Countries
        flashCardModels
            .append(
            FlashcardModel(topic: "Countries",
                           topicDescription: "Explore geographical knowledge",
                           topicImageName: BigBenImage,
                           questionsModels: QuestionViewModel.getQuestionCountryModels(),
                           numberOfQuestions: QuestionViewModel.getQuestionCountryModels().count)
            )
        
        // Movies
        flashCardModels
            .append(
            FlashcardModel(topic: "Movies",
                           topicDescription: "Test your movie knowledge",
                           topicImageName: moviesTopic,
                           questionsModels: QuestionViewModel.getMovieTriviaModels(),
                           numberOfQuestions: QuestionViewModel.getMovieTriviaModels().count)
            )
        
        // Spanish greetings
        flashCardModels
            .append(
            FlashcardModel(topic: "Spanish Greetings",
                           topicDescription: "Greet in Spanish",
                           topicImageName: BigBenImage,
                           questionsModels: QuestionViewModel.getSpanishGreetingsModels(),
                           numberOfQuestions: QuestionViewModel.getSpanishGreetingsModels().count)
            )
    }
}
