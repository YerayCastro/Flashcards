//
//  ContentView.swift
//  Flashcards
//
//  Created by Yery Castro on 13/7/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            TopicView()
                .tabItem {
                    Label("Flascards", systemImage: "doc.plaintext")
                }
            InformationView()
                .tabItem {
                    Label("Info", systemImage: "info.circle")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
