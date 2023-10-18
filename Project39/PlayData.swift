//
//  PlayData.swift
//  Project39
//
//  Created by Diego A. Perez Pares on 10/18/23.
//

import Foundation

class PlayData {
    var allWords = [String]()
    
    init() {
        if let path = Bundle.main.path(forResource: "plays", ofType: "txt") {
            if let plays = try? String(contentsOfFile: path) {
                allWords = plays.components(separatedBy: CharacterSet.alphanumerics.inverted)
                
                allWords = allWords.filter { $0 != "" }
            }
        }
    }
}
