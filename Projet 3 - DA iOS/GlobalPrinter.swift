//
//  GlobalPrinter.swift
//  Projet 3 - DA iOS
//
//  Created by Mustapha Gherras on 28/09/2017.
//  Copyright © 2017 Mustapha Gherras. All rights reserved.
//

import Foundation

// MARK: - Printer Class Definition
class Printer {
    
    // MARK: - Presentation print
    public func presentation() {
        print("Welcome to the DA iOS 3rd Project")
        print("Name up 2 players teams")
        print("Compose your teamcomp")
        print("By choosing the number printed on the list")
    }
    
    // MARK: Name the player print
    public func nameThePlayer(numberOfPlayers: Int) {
        print("\nName the Player \(numberOfPlayers + 1)")
    }
    
    // MARK: Name the players differently print
    public func nameThePlayersDifferently() {
        print("Put a name or Name the players differently")
    }
    
    // MARK: - Adding Character to a team print
    public func addingCharacter(_ player: Player) {
        print("\n\(player.name) is choosing his \(player.characters.count + 1) character")
        print("1 - Fighter: Life(100) Damage(10)")
        print("2 - Mage: Life(70) Heal(40)")
        print("3 - Colossus: Life(200) Damage(5)")
        print("4 - Dwarf: Life(70) Damage(50)", terminator: "\n")
    }
    
    // MARK: - Please enter a valid number print
    public func validNumber() {
        print("Please enter a valid number")  
    }
    
    // MARK: - Enter a name for your character print
    public func validNameForCharacter() {
        print("\nEnter a name for your character")
    }
    
    // MARK: - Please enter a different name print
    public func differentName() {
        print("Please enter a different name")
    }
    
    
    // MARK: - You've selected print
    public func youHaveSelected(player: Player, index: Int) {
        print("\nYou've selected a \(player.characters[index].name)")
    }
    
    // MARK: - Fight Presentation print
    public func fightPresentation(name: String, characters: [Character]) {
        print("\nOK \(name), lets fight, select a champion")
        print("Select one of \(name)s charaacter by his number")
        for i in Statics.numberOfCharacterPerPlayerRange {
            print("\(i) - \(characters[i])")
        }
    }
    
    // MARK: - Error Occurs Print
    public func anErrorOccursWithPlayers() {
        print("An error occured with setting players")
    }
    
    // MARK: - Winner Print
    public func displayWinner(winner: Player) {
        print("\(winner.name) wons the game with \(Statics.numberOfTurns) turns")
    }
    
    // MARK: - Select Character Print
    public func selectCharacterInYourTeam(_ player: Player) {
        print("\(player.name) turns, select a character in your Team\n")
    }
    
    // MARK: - You Selected Print
    public func youSelected() {
        print("\nYou have selected")
    }
    
    // MARK: - Nothing Print
    public func noth() {
        print("")
    }
    
    // MARK: - Ally To Heal Print
    public func allyToHeal() {
        print("Please select an ally to heal")
    }
    
    // MARK: - Select Enemy Print
    public func selectEnemy() {
        print("Please select an enemy character to attack")
    }
    
    // MARK: - Back Slash Print
    public func backSlash() {
        print("\n")
    }
    
    // MARK: - Charac Is Dead Print
    public func characIsDead(player: Player, _ i: Int) {
        print("\(player.characters[i].name) is dead..")
    }
    
    // MARK: - Print i Print
    public func printI(_ i: Int){
        print("\(i + 1) - ", terminator: "")
    }
    
    // MARK: - Description character
    public func description(_ character: Character) {
        print("\(character.name): lifePoints(\(character.lifePoints))")
        print("Damages(\(character.weapon))")
    }
    
    // MARK: - doAction Print
    public func doAction(_ character: Character) {
        print("\(character.name) attacks \(character.name)")
    }
    
    // MARK: - Lost LP Print
    public func lostLifePoints(_ character: Character, _ oldLife: Int) {
        print("\(character.name) lost \(oldLife - character.lifePoints) life points")
    }
    
    // MARK: - Lost Armor Print
    public func lostArmorPoint(_ character: Character, _ oldArmor: Int) {
        print("\(character.name) lost \(oldArmor - character.armor) armor points")
    }
    
    // MARK: - Won LP Print
    public func wonLifePoint(_ character: Character, _ oldLife: Int) {
        print("\(character.name) wons \(character.lifePoints - oldLife) life points")
    }
    
    // MARK: - Won Armor Print
    public func wonArmorPoint(_ character: Character, _ oldArmor: Int) {
        print("\(character.name) wons \(character.armor - oldArmor) armor points")
    }
    
    // MARK: - Description Figher Print
    public func descriptionFighter(_ character: Character) {
        print("Fighter with Damages(\(character.weapon.damageValue))")
    }
    
    // MARK: - Description Mage Print
    public func descriptionMage(_ character: Character) {
        print("Mage with Heal(\(character.weapon.healValue))")
    }
    
    // MARK: - Description Colossus Print
    public func descriptionColossus(_ character: Character) {
        print("Damages(\(character.weapon.damageValue))")
    }
    
    // MARK: - Description Dwarf Print
    public func descriptionDwarf(_ character: Character) {
        print("Damages(\(character.weapon.damageValue))")
    }
    
    // MARK: - Box appears Print
    public func boxAppears(_ randomWeaponType: WeaponType) {
        print("A random Box appears (type: \(randomWeaponType)\n")
    }
    
    // MARK: - Rdm Weapon Dmg Value Print
    public func randomWeaponDmgValue(_ randomWeapon: Weapon) {
        print("damage: \(randomWeapon.damageValue)")
    }
 
    // MARK: - random Weapon Heal Value Print
    public func randomWeaponHealValue(_ randomWeapon: Weapon) {
        print("heal: \(randomWeapon.healValue)")
    }
    
    // MARK: - Selection Equips Print
    public func selectionEquips(_ selection: Character) {
        print("\(selection.name) equips with the new weapon")
    }
    
    // MARK: - Selection Equips Fails Prints
    public func selectionEquipsFails(_ selection: Character) {
        print("\(selection.name) can't equips with the new weapon")
    }
    
    // MARK: - Heal Box Appears Print
    public func healBoxAppears(_ healBoxValue: Int) {
        print("A Box of heal appears (heal: \(healBoxValue))")
    }
    
    // MARK: - Armor Box Appears Print
    public func armorBoxAppears(_ armorBoxValue: Int) {
       print("A Box of armor appears (armure: \(armorBoxValue))")
    }
}
