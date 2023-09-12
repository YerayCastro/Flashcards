//
//  InformationView.swift
//  Flashcards
//
//  Created by Yery Castro on 13/7/23.
//

import SwiftUI

struct InformationView: View {
    var body: some View {
        ZStack {
            Color.blue.opacity(0.3).ignoresSafeArea()
            
            Text("Information View")
        }
    }
}

struct InformationView_Previews: PreviewProvider {
    static var previews: some View {
        InformationView()
    }
}
