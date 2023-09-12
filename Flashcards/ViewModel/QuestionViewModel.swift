//
//  QuestionViewModel.swift
//  Flashcards
//
//  Created by Yery Castro on 13/7/23.
//

import Foundation

class QuestionViewModel: ObservableObject {
    static func getQuestionCountryModels() -> [QuestionModel] {
        var countryQuestionModel: [QuestionModel] = []
        
        countryQuestionModel
            .append(QuestionModel(question: "What city is this?", questionImageName: BigBenImage, answer: "London, United Kingdom", answerImageName: nil))
        
        countryQuestionModel
            .append(QuestionModel(question: "Where is the Eiffel tower located?", questionImageName: nil, answer: "Paris, France", answerImageName: nil))
        
        countryQuestionModel
            .append(QuestionModel(question: "What is the capital of Egypt?", questionImageName: CairoImage, answer: "Cairo", answerImageName: nil))

        
        countryQuestionModel
            .append(QuestionModel(question: "What is the capital of Spain?", questionImageName: MadridImage, answer: "Madrid", answerImageName: nil))
        
        countryQuestionModel
            .append(QuestionModel(question: "What is the original name of Sri Lanka?", questionImageName: nil, answer: "Ceylon", answerImageName: nil))
        
        
        countryQuestionModel
            .append(QuestionModel(question: "In what country is the Yangtze river located?", questionImageName: nil, answer: "China", answerImageName: nil))
        
        countryQuestionModel
            .append(QuestionModel(question: "What is the capital of Fiji?", questionImageName: nil, answer: "Suva", answerImageName: nil))
        
        countryQuestionModel
            .append(QuestionModel(question: "What are the names of the five oceans of the world?", questionImageName: nil, answer: "Atlantic, Pacific, Indian, Arctic, and the Antarctic", answerImageName: nil))

        countryQuestionModel
            .append(QuestionModel(question: "What is the name of the longest river in Africa?", questionImageName: nil, answer: "The Nile River", answerImageName: nil))


        countryQuestionModel
            .append(QuestionModel(question: "What American city is the Golden Gate Bridge located in?", questionImageName: nil, answer: "San Francisco", answerImageName: nil))


        countryQuestionModel
            .append(QuestionModel(question: "What U.S. state is home to no documented poisonous snakes?", questionImageName: nil, answer: "Alaska", answerImageName: nil))

        

        countryQuestionModel
            .append(QuestionModel(question: "What present-day Italian city does Mt. Vesuvius overlook?", questionImageName: nil, answer: "Naples", answerImageName: nil))

        countryQuestionModel
            .append(QuestionModel(question: "What country are the Great Pyramids of Giza located in?", questionImageName: nil, answer: "Egypt", answerImageName: imgEgypt))

        
        countryQuestionModel
            .append(QuestionModel(question: "What is the name of the smallest country in the world?", questionImageName: VaticanCity, answer: "The Vatican City", answerImageName: nil))

        return countryQuestionModel
    }
    
    static func getMovieTriviaModels() -> [QuestionModel] {
        var movieTriviaModels: [QuestionModel] = []
      
        movieTriviaModels
            .append(QuestionModel(question: "What are the dying words of Charles Foster Kane in *Citizen Kane*?", questionImageName: nil, answer: "Rosebud", answerImageName: nil))
        
        movieTriviaModels
            .append(QuestionModel(question: "Who played Mrs. Robinson in *The Graduate?*", questionImageName: nil, answer: "Anne Bancroft", answerImageName: nil))
        
        
        movieTriviaModels
            .append(QuestionModel(question: "What was the first feature-length animated movie ever released?", questionImageName: snowWhite, answer: "*Snow White and the Seven Dwarfs*", answerImageName: nil))
        
        movieTriviaModels
            .append(QuestionModel(question: "In *The Matrix*, does Neo take the blue pill or the red pill?", questionImageName: nil, answer: "Red", answerImageName: nil))
        
        movieTriviaModels
            .append(QuestionModel(question: "For what movie did Tom Hanks score his first Academy Award nomination?", questionImageName: nil, answer: "*Big*", answerImageName: nil))
        
        movieTriviaModels
            .append(QuestionModel(question: #"What 1927 musical was the first "talkie"?"#, questionImageName: nil, answer: "*The Jazz Singer*", answerImageName: nil))
        
        movieTriviaModels
            .append(QuestionModel(question: "What's the name of the skyscraper in *Die Hard?*", questionImageName: nil, answer: "Nakatomi Plaza", answerImageName: nil))
        
        movieTriviaModels
            .append(QuestionModel(question: "What flavor of Pop Tarts does Buddy the Elf use in his spaghetti in *Elf*?", questionImageName: nil, answer: "Chocolate", answerImageName: nil))
        
        return movieTriviaModels
    }

    static func getSpanishGreetingsModels() -> [QuestionModel] {
        var spanishGreetingsModels: [QuestionModel] = []
      
        spanishGreetingsModels
            .append(QuestionModel(question: "Hola", questionImageName: nil, answer: "Hello / Hi", answerImageName: nil))
        
        spanishGreetingsModels
            .append(QuestionModel(question: " ¿Qué tal?", questionImageName: nil, answer: "How's it going?", answerImageName: nil))
        
        
        spanishGreetingsModels
            .append(QuestionModel(question: "No mucho", questionImageName: nil, answer: "Not much", answerImageName: nil))
                
        spanishGreetingsModels
            .append(QuestionModel(question: "Y Tu?", questionImageName: nil, answer: "And you?", answerImageName: nil))
        
        spanishGreetingsModels
            .append(QuestionModel(question: "Bien", questionImageName: nil, answer: "Fine / Good", answerImageName: nil))
        
        spanishGreetingsModels
            .append(QuestionModel(question: "Gracias", questionImageName: nil, answer: "Thanks", answerImageName: imgThankYou))
        
        spanishGreetingsModels
            .append(QuestionModel(question: "Más o menos", questionImageName: nil, answer: "More or less", answerImageName: nil))
        
        return spanishGreetingsModels
    }
}

