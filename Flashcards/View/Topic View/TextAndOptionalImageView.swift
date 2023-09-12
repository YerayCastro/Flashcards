//
//  TextAndOptionalImageView.swift
//  Flashcards
//
//  Created by Yery Castro on 14/7/23.
//

import SwiftUI

struct TextAndOptionalImageView: View {
    let text: String
    let imageName: String?
    let rotate: Bool
    
    var body: some View {
        VStack {
            Text(.init(text))
                .font(.title2)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
                .fixedSize(horizontal: false, vertical: true)
                .lineSpacing(5)
                .padding(.horizontal)
                
            
            if let imageName = imageName {
                let width = UIScreen.main.bounds.width
                let height = UIScreen.main.bounds.height
                
                Image(imageName)
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 0.9*width, height: height / 2)
            }
        }
        .rotation3DEffect(
            rotate ? .degrees(180) : .zero,
            axis: (x: 0, y: 1, z: 0))
    }
}

struct TextAndOptionalImageView_Previews: PreviewProvider {
    static var previews: some View {
        TextAndOptionalImageView(
            text: "Whats city is this?",
            imageName: BigBenImage,
            rotate: false)
    }
}
