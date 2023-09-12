//
//  TopicView.swift
//  Flashcards
//
//  Created by Yery Castro on 13/7/23.
//

import SwiftUI

struct TopicView: View {
    @StateObject var flashCardViewModel = FlashCardViewModel()
    
    var body: some View {
        NavigationView {
            List(flashCardViewModel.flashCardModels) { flashCardModel in
                FlashItemView(flashCardModel: flashCardModel)
            }
        }.navigationTitle("Flascards")
    }
}

struct TopicView_Previews: PreviewProvider {
    static var previews: some View {
        TopicView()
    }
}
