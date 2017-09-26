//
//  Colossus.swift
//  Projet 3 - DA iOS
//
//  Created by Mustapha Gherras on 26/09/2017.
//  Copyright © 2017 Mustapha Gherras. All rights reserved.
//

import Foundation

// MARK: - Colossus Class Definition
class Colossus: Character {
    
    // MARK: - Init Colossus stats
    override init() {
        super.init()
        self.name = "Colossus"
        self.lifePoints = 300
        self.weapon = Weapon(type: .damage, damage: 5, heal: 0)
    }
}
