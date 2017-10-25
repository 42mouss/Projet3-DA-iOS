//
//  Fighter.swift
//  Projet 3 - DA iOS
//
//  Created by Mustapha Gherras on 26/09/2017.
//  Copyright © 2017 Mustapha Gherras. All rights reserved.
//

import Foundation

// MARK: - Fighter Class Definition
class Fighter: Character {

    // MARK: - Init Fighter stats
    init() {
        super.init(name: "Fighter", lifePoints: 100, weapon: Weapon(type: .damage, damage: 50, heal: 0))
    }
    
    override func description() {
        printer.descriptionFighter(self)
    }
}
