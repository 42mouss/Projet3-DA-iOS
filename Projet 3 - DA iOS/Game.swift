//
//  Game.swift
//  Projet 3 - DA iOS
//
//  Created by Mustapha Gherras on 26/09/2017.
//  Copyright © 2017 Mustapha Gherras. All rights reserved.
//

import Foundation

// MARK: - Game Class Definition
class Game {
    
    // MARK: - Adding Player
    public func addPlayer() {
        for players in Statics.numberOfPlayers {
            print("Name the Player \(players + 1)")
            if let reader = readLine() {
                if reader.characters.count > 0 && !(Statics.existingNamesPlayers.contains(reader)) {
                    Statics.players[players] = Player(name: reader)
                    Statics.existingNamesPlayers.append(reader)
                } else {
                    print("Name the players differently")
                    Statics.existingNamesPlayers.removeAll(keepingCapacity: true)
                    addPlayer()
                }
            }
        }
    }
}
