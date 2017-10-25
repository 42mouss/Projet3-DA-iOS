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
    init() {
        super.init(name: "Colossus", lifePoints: 200, weapon: Weapon(type: .damage, damage: 5, heal: 0))
    }
    
    override func description() {
        printer.descriptionColossus(self)
    }
}
