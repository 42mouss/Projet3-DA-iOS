//
//  Statics.swift
//  Projet 3 - DA iOS
//
//  Created by Mustapha Gherras on 26/09/2017.
//  Copyright © 2017 Mustapha Gherras. All rights reserved.
//

import Foundation

// MARK: - Statics Class Definition
class Statics {
    // MARK: - Number of players, of character per players, of turns
    static var existingNamesPlayers = [String]()
    static var numberOfCharacterPerPlayer = 3
    //static var numberOfCharacterPerPlayerEnum = 0 ..< 3
    static var numberOfCharacterPerPlayerRange: CountableRange<Int> {
        get {
            return 0 ..< numberOfCharacterPerPlayer
        }
    }
    static var numberOfPlayers = 0 ..< 2
    static var players = [Player?](repeating: nil, count: 2)
    static let characters = 3
    static var numberOfTurns = 0
    
    
}
