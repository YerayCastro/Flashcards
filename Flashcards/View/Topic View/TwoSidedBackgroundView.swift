//
//  TwoSidedBackgroundView.swift
//  Flashcards
//
//  Created by Yery Castro on 14/7/23.
//

import SwiftUI

struct TwoSidedBackgroundView: View {
    let frontColor: Color
    let backColor: Color
    let opacity: CGFloat
    let isFrontUp: Bool
    
    var body: some View {
        if isFrontUp {
            frontColor
                .opacity(opacity)
                .ignoresSafeArea()
        } else {
            backColor
                .opacity(opacity)
                .ignoresSafeArea()
        }
    }
}

struct TwoSidedBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        TwoSidedBackgroundView(
            frontColor: .blue,
            backColor: .red,
            opacity: 0.1,
            isFrontUp: true)
    }
}
