//
//  Player.swift
//  Projet 3 - DA iOS
//
//  Created by Mustapha Gherras on 26/09/2017.
//  Copyright © 2017 Mustapha Gherras. All rights reserved.
//

import Foundation

// MARK: - Player Class Definition
class Player {
    // MARK: - Name of the player, Characters selected Array, Are Characters still Alive ? Variable
    var name: String
    var characters: [Character]
    var isAlive: Bool
    
    
    // MARK: - Player Class Init, only need to get the name
    init(name: String) {
        self.name = name
        self.characters = []
        self.isAlive = true
    }
    
    
    // MARK: - Adding Characters to Team, Repeat if wrong entry, Printing the champ you've picked
    public func addCharacterTeam() {
    var validCharacterTeam = true

        repeat {
            switch readLine()! {
            case "1":
                self.characters.append(Fighter())
            case "2":
                self.characters.append(Mage())
            case "3":
                self.characters.append(Colossus())
            case "4":
                self.characters.append(Dwarf())
            default:
                print("Please enter a valid number")
                validCharacterTeam = false
                
            }
        } while !validCharacterTeam
    print("You've selected \(self.characters[self.characters.count].name)")
    }
}
