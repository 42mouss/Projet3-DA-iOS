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
    // MARK: - Named by Player, Name of the player, Characters selected Array, Are Characters still Alive ? Variable
    var name: String
    var characters: [Character]
    var isAlive: Bool
    
    // MARK: - Helper for prints
    let printer = Printer()
    
    
    // MARK: - Player Class Init, only need to get the name
    init(name: String) {
        self.name = name
        self.characters = []
        self.isAlive = true
    }
    
    public func selectCharacter() -> Character {
        
        print("\(self.name) turns, select a character in your Team\n")
        self.introduceTeam()
        
        let selectionNumber = Global.inputInt()
        if selectionNumber >= 1 && selectionNumber <= self.characters.count {
            print("\nYou have selected")
            self.characters[selectionNumber - 1].description()
            print("")
            return self.characters[selectionNumber - 1]
        } else {
            print("Please select a valid number")
            return selectCharacter()
        }
    }
    
    public func selectTarget(selection: Character, adversary: Player) -> Character {
        var selectedPlayer = Player(name: "")
        
        if selection is Mage {
            print("Please select an ally to heal")
            selectedPlayer = self
        } else {
            print("Please select an enemy character to attack")
            selectedPlayer = adversary
        }
        
        selectedPlayer.introduceTeam()
        
        let selectionNumber = Global.inputInt()
        if selectionNumber >= 1 && selectionNumber <= selectedPlayer.characters.count {
            return selectedPlayer.characters[selectionNumber - 1]
        } else {
            printer.validNumber()
            return selectTarget(selection: selection, adversary: adversary)
        }
        
    }
    
    public func updateTeam() {
        var indexDead: Int?
        isAlive = false
        
        for i in 0 ... self.characters.count - 1 {
            if self.characters[i].lifePoints == 0 {
                print("\(self.characters[i].name) is dead..")
                indexDead = i
            } else {
                isAlive = true
            }
        }
        
        if let newIndexDead = indexDead {
            self.characters.remove(at: newIndexDead)
        }
        print("\n")
    }
    
    private func introduceTeam() {
        for i in 0 ... self.characters.count - 1 {
            print("\(i + 1) - ", terminator: "")
            self.characters[i].description()
        }
        print("")
    }
    
}
