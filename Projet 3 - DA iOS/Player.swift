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
    
    // MARK: - Select Characters Method
    public func selectCharacter() -> Character {
        
        printer.selectCharacterInYourTeam(self)
        self.introduceTeam()
        
        let selectionNumber = Global.inputInt()
        if selectionNumber >= 1 && selectionNumber <= self.characters.count {
            printer.youSelected()
            self.characters[selectionNumber - 1].description()
            printer.noth()
            return self.characters[selectionNumber - 1]
        } else {
            printer.validNumber()
            return selectCharacter()
        }
    }
    
    // MARK: - Select Target Method
    public func selectTarget(selection: Character, adversary: Player) -> Character {
        var selectedPlayer = Player(name: "")
        
        if selection is Mage {
            printer.allyToHeal()
            selectedPlayer = self
        } else {
            printer.selectEnemy()
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
    
    
    // MARK: - Update Team Method
    public func updateTeam() {
        var indexDead: Int?
        isAlive = false
        
        for i in 0 ... self.characters.count - 1 {
            if self.characters[i].lifePoints == 0 {
                printer.characIsDead(player: self, i)
                indexDead = i
            } else {
                isAlive = true
            }
        }
        
        if let newIndexDead = indexDead {
            self.characters.remove(at: newIndexDead)
        }
        printer.backSlash()
    }
    
    
    // MARK: - Introduce Team Method
    private func introduceTeam() {
        for i in 0 ... self.characters.count - 1 {
            printer.printI(i)
            self.characters[i].description()
        }
        printer.noth()
    }
    
}
