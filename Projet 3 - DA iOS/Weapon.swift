//
//  Weapon.swift
//  Projet 3 - DA iOS
//
//  Created by Mustapha Gherras on 26/09/2017.
//  Copyright © 2017 Mustapha Gherras. All rights reserved.
//

import Foundation

// MARK: - Enum Weapon Types
enum WeaponType {
    case damage
    case heal
}

// MARK: - Weapon Class Definition
class Weapon {

    // Mark: - Damage, Heal, WeaponType Definition
    var damage, heal: Int?
    var type: WeaponType?
    
    init(type: WeaponType, damage: Int, heal: Int) {
        self.type = type
        self.damage = damage
        self.heal = heal
    }
}
