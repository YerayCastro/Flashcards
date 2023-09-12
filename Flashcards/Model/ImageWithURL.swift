//
//  ImageWithURL.swift
//  Flashcards
//
//  Created by Yery Castro on 13/7/23.
//

import Foundation

struct ImageWithURL: Identifiable {
    let id = UUID()
    let imageName: String
    let urlString: String
    let courseName: String
}
