//
//  Weapon.swift
//  Projet 3 - DA iOS
//
//  Created by Mustapha Gherras on 26/09/2017.
//  Copyright © 2017 Mustapha Gherras. All rights reserved.
//

import Foundation

// MARK: - Enum Weapon Types
enum WeaponType: Int {
    case damage
    case heal
}

// MARK: - Weapon Class Definition
class Weapon {

    // Mark: - Damage, Heal, WeaponType Definition
    var damageValue, healValue: Int
    var type: WeaponType
    
    init(type: WeaponType = .damage, damage: Int = 0, heal: Int = 0) {
        self.type = type
        self.damageValue = damage
        self.healValue = heal
    }
}
