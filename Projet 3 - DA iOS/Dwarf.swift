//
//  Dwarf.swift
//  Projet 3 - DA iOS
//
//  Created by Mustapha Gherras on 26/09/2017.
//  Copyright © 2017 Mustapha Gherras. All rights reserved.
//

import Foundation

// MARK: - Dwarf Class Definition
class Dwarf: Character {
    
    // MARK: - Init Dwarf stats
    init() {
        super.init(name: "Dwarf", lifePoints: 70, weapon: Weapon(type: .damage, damage: 50, heal: 0))
    }
    
    override func description() {
        print("Damages(\(self.weapon.damageValue))")
    }
}
