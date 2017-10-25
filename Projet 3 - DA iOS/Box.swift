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
            printer.boxAppears(randomWeapon.type)
            
            switch randomWeapon.type {
            case .damage:
                randomWeapon.damageValue = Int(arc4random_uniform(20)) + 30
                printer.randomWeaponDmgValue(randomWeapon)
            case .heal:
                randomWeapon.healValue = Int(arc4random_uniform(10)) + 20
                printer.randomWeaponHealValue(randomWeapon)
            }
            
            if selection.weapon.type == randomWeapon.type {
                selection.weapon = randomWeapon
                printer.selectionEquips(selection)
            } else {
                printer.selectionEquipsFails(selection)
            }
        }
    }
    
    // Open the care box and add the life to the character
    private func openCareBox(selection: Character) {
        let healBoxValue = Int(arc4random_uniform(20)) + 10
        
        printer.healBoxAppears(healBoxValue)
        selection.receveLife(life: healBoxValue)
    }
    
    // Open the armor box and add the armor to the character
    private func openArmorBox(selection: Character) {
        let armorBoxValue = Int(arc4random_uniform(20)) + 10
        
        printer.armorBoxAppears(armorBoxValue)
        selection.receveArmor(armor: armorBoxValue)
    }
    
}
