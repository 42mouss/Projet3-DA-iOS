//
//  Character.swift
//  Projet 3 - DA iOS
//
//  Created by Mustapha Gherras on 26/09/2017.
//  Copyright © 2017 Mustapha Gherras. All rights reserved.
//

import Foundation

// MARK: - Character Class Definiton

class Character {
    // MARK: - Name, Life points, Damages Definitions
    var name: String
    var lifePoints: Int
    var weapon: Weapon
    
    
    // MARK: - Init values
    init() {
        self.name = "Character"
        self.lifePoints = 100
        self.weapon = Weapon(type: .damage, damage: 100, heal: 0)
    }

    // MARK: - Description of Character stats
    public func description() -> Void {
        print("\(self.name): lifePoints(\(self.lifePoints))")
        print("Damages(\(self.weapon))")
    }
}
