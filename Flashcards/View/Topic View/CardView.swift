//
//  CardView.swift
//  Flashcards
//
//  Created by Yery Castro on 14/7/23.
//

import SwiftUI

struct CardView: View {
    @State private var rotateView: Bool = false
    @State private var offset = CGSize.zero
    @State private var scaleFactor: CGFloat = 1.0
    
    
    let text: String
    let imageName: String?
    let answer: String
    let answerImageName: String?
    
    var removeCard: (() -> Void)? = nil
    
    var body: some View {
        ZStack {
            TwoSidedBackgroundView(frontColor: .blue, backColor: .red, opacity: 0.1,isFrontUp: !rotateView)
            
            VStack {
                Spacer()
                
                if !rotateView {
                    TextAndOptionalImageView(text: text, imageName: imageName, rotate: false)
                        .scaleEffect(scaleFactor)
                } else {
                    TextAndOptionalImageView(text: answer, imageName: answerImageName, rotate: true)
                        .scaleEffect(scaleFactor)
                }
                
                Spacer()
                
                ZStack {
                    Rectangle()
                        .fill(.gray.opacity(0.4))
                        .frame(height: height / 15)
                        .overlay(
                        Rectangle()
                            .stroke(.black.opacity(0.4))
                            .frame(height: height / 15)
                        )
                }
                .rotation3DEffect(rotateView ? .degrees(180) : .zero, axis: (x: 0, y: 1, z: 0))
            }
        }
        .cornerRadius(10)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .overlay(
        RoundedRectangle(cornerRadius: 10)
            .stroke(.gray, lineWidth: 1)
        )
        .padding()
        .rotation3DEffect(rotateView ? .degrees(180) : .zero, axis: (x: 0, y: 1, z: 0))
        .animation(.easeOut, value: rotateView)
        .rotationEffect(.degrees(Double(offset.width) / 40))
        .offset(x: offset.width * 2,
                y: offset.height * 0.4)
        .opacity(2-Double(abs(offset.width / 50)))
        .gesture(
        DragGesture()
            .onChanged { gesture in
                offset = gesture.translation
            }
            .onEnded { _ in
                if abs(offset.width) > 100 {
                    removeCard?()
                } else {
                    offset = .zero
                }
                
            }
        )
        .gesture(
        MagnificationGesture() 
            .onChanged { gesture in
                withAnimation(.spring()) {
                    scaleFactor = gesture
                }
            }
            .onEnded { _ in
                withAnimation(.spring()) {
                    scaleFactor = 1.0
                }
            }
        )
        .onTapGesture {
            rotateView.toggle()
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        let q = QuestionModel(
            question: "What is this city?",
            questionImageName: BigBenImage,
            answer: "London, United, Kingdom",
            answerImageName: nil)
        
        CardView(
            text: q.question,
            imageName: q.questionImageName,
            answer: q.answer,
            answerImageName: q.answerImageName)
    }
}
