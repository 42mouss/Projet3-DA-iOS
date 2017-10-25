//
//  Character.swift
//  Projet 3 - DA iOS
//
//  Created by Mustapha Gherras on 26/09/2017.
//  Copyright © 2017 Mustapha Gherras. All rights reserved.
//

import Foundation

// MARK: - Character Class Definiton

class Character {
    // MARK: - Name, Life points, Damages Definitions
    var name: String
    var lifePoints: Int
    var weapon: Weapon
    var armor = 0
    
    
    // MARK: - Init values
    init(name: String, lifePoints: Int, weapon: Weapon) {
        self.name = name
        self.lifePoints = lifePoints
        self.weapon = weapon
    }

    // MARK: - Description of Character stats
    public func description() -> Void {
        printer.description(self)
    }
    
    // MARK: - Do Action Method
    public func doAction(target: Character) {
        printer.doAction(self)
        target.receveDamage(damage: self.weapon.damageValue)
    }
    
    // MARK: - Receve Dmg Method
    public func receveDamage(damage: Int) {
        let oldLife = self.lifePoints
        let oldArmor = self.armor
        
        if self.armor < damage {
            self.lifePoints -= damage - self.armor
            if self.lifePoints < 0 { self.lifePoints = 0 }
            printer.lostLifePoints(self, oldLife)
        }
        
        self.armor -= damage
        if self.armor < 0 { self.armor = 0 }
        
        if oldArmor > self.armor {
            printer.lostArmorPoint(self, oldArmor)
        }
    }
    
    // Update the life value when the character receve life from box
    public func receveLife(life: Int) {
        let oldLife = self.lifePoints
        
        self.lifePoints += lifePoints
        printer.wonLifePoint(self, oldLife)
    }
    
    // Update the armor value when the character receve armor from box
    public func receveArmor(armor: Int) {
        let oldArmor = self.armor
        
        self.armor += armor
        printer.wonArmorPoint(self, oldArmor)
    }
}
