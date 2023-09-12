//
//  HeaderView.swift
//  Flashcards
//
//  Created by Yery Castro on 14/7/23.
//

import SwiftUI

struct HeaderView: View {
    let topic: String
    let questionNumber: Int
    let totalNumberOfQuestions: Int
    let colorBG: Color
    let colorFill: Color
    var dismissFunc: (() -> Void)? = nil
    
    var body: some View {
        VStack(spacing: 5) {
            HStack {
                Text(topic)
                    .fontWeight(.bold)
                Spacer()
                
                Text("\(questionNumber) out of \(totalNumberOfQuestions)")
                    .font(.caption)
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
            }
            
            HStack {
                Button(action: {
                    dismissFunc?()
                }, label: {
                    Text(String("\u{2715}"))
                        .font(.largeTitle)
                        .fontWeight(.thin)
                        .foregroundColor(colorBG)
            })
                
                FillBarView(
                    barWidth: 10,
                    colorBG: .gray,
                    colorFill: .purple,
                    percentage: CGFloat(questionNumber) / CGFloat(totalNumberOfQuestions))
                .padding()
            }
        }.padding(.horizontal)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(
            topic: "Countries",
            questionNumber: 3,
            totalNumberOfQuestions: 10,
            colorBG: .gray,
            colorFill: .purple)
    }
}
