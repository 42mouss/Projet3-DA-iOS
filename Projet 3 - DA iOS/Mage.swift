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
    init() {
        super.init(name: "Fighter", nammed: "", lifePoints: 100, weapon: Weapon(type: .heal, damage: 0, heal: 40))
        }
}
