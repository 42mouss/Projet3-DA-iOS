//
//  GlobalPrinter.swift
//  Projet 3 - DA iOS
//
//  Created by Mustapha Gherras on 28/09/2017.
//  Copyright © 2017 Mustapha Gherras. All rights reserved.
//

import Foundation

// MARK: - Printer Class Definition
class Printer {
    
    // MARK: - Presentation print
    public func presentation() {
        print("Welcome to the DA iOS 3rd Project")
        print("Name up 2 players teams")
        print("Compose your teamcomp")
        print("By choosing the number printed on the list")
    }
    
    // MARK: Name the player print
    public func nameThePlayer(numberOfPlayers: Int) {
        print("\nName the Player \(numberOfPlayers + 1)")
    }
    
    // MARK: Name the players differently print
    public func nameThePlayersDifferently() {
        print("Put a name or Name the players differently")
    }
    
    // MARK: - Adding Character to a team print
    public func addingCharacter(player: Player) {
        print("\n\(player.name) is choosing his \(player.characters.count + 1) character")
        print("1 - Fighter: Life(100) Damage(10)")
        print("2 - Mage: Life(70) Heal(40)")
        print("3 - Colossus: Life(300) Damage(5)")
        print("4 - Dwarf: Life(70) Damage(50)", terminator: "\n")
    }
    
    // MARK: - Please enter a valid number print
    public func validNumber() {
        print("Please enter a valid number")  
    }
    
    // MARK: - Enter a name for your character print
    public func validNameForCharacter() {
        print("\nEnter a name for your character")
    }
    
    // MARK: - Please enter a different name print
    public func differentName() {
        print("Please enter a different name")
    }
    
    
    // MARK: - You've selected print
    public func youHaveSelected(player: Player, index: Int) {
        print("\nYou've selected a \(player.characters[index].name) nammed \(player.characters[index].nammed)")
    }
    
    
}
