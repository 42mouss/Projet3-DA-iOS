//
//  Mage.swift
//  Projet 3 - DA iOS
//
//  Created by Mustapha Gherras on 26/09/2017.
//  Copyright © 2017 Mustapha Gherras. All rights reserved.
//

import Foundation

// MARK: - Mage Class Definition
class Mage: Character {
    
    // MARK: - Init Mage stats
    override init() {
        super.init()
        self.name = "Mage"
        self.lifePoints = 70
        self.weapon = Weapon(type: .heal, damage: 0, heal: 40)
    }
}
