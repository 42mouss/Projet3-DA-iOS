//
//  Box.swift
//  Projet 3 - DA iOS
//
//  Created by Mustapha Gherras on 19/10/2017.
//  Copyright © 2017 Mustapha Gherras. All rights reserved.
//

import Foundation

enum BoxType: Int {
    case WeaponBox
    case CareBox
    case ArmorBox
}

// Define the class box
class Box {
    
    private init() {}
    static let instance = Box()
    
    // A box appaear randomly and open it depending of the type
    public func boxAppear(character: Character) {
        let randomBoxValue = Int(arc4random_uniform(3))
        
        if randomBoxValue == 0 {
            if let boxType = BoxType(rawValue: Int(arc4random_uniform(3))) {
                switch boxType {
                case .WeaponBox:
                    openWeaponBox(selection: character)
                case .CareBox:
                    openCareBox(selection: character)
                case .ArmorBox:
                    openArmorBox(selection: character)
                }
            }
            
            print("\n\n")
        }
    }
    
    // Open the weapon box and change the weapon if it's possible
    private func openWeaponBox(selection: Character) {
        let randomWeapon = Weapon()
        
        if let randomWeaponType = WeaponType(rawValue: Int(arc4random_uniform(1))) {
            randomWeapon.type = randomWeaponType
            print("A random Box appears (type: \(randomWeapon.type))\n")
            
            switch randomWeapon.type {
            case .damage:
                randomWeapon.damageValue = Int(arc4random_uniform(20)) + 30
                print("damage: \(randomWeapon.damageValue))")
            case .heal:
                randomWeapon.healValue = Int(arc4random_uniform(10)) + 20
                print("heal: \(randomWeapon.healValue))")
            }
            
            if selection.weapon.type == randomWeapon.type {
                selection.weapon = randomWeapon
                print("\(selection.name) equips with the new weapon")
            } else {
                print("\(selection.name) can't equips with the new weapon")
            }
        }
    }
    
    // Open the care box and add the life to the character
    private func openCareBox(selection: Character) {
        let careBoxValue = Int(arc4random_uniform(20)) + 10
        
        print("A Box of armor appears (soin: \(careBoxValue))")
        selection.receveLife(life: careBoxValue)
    }
    
    // Open the armor box and add the armor to the character
    private func openArmorBox(selection: Character) {
        let armorBoxValue = Int(arc4random_uniform(20)) + 10
        
        print("A Box of armor appears (armure: \(armorBoxValue))")
        selection.receveArmor(armor: armorBoxValue)
    }
    
}
