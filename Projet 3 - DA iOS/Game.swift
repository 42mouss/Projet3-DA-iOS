//
//  Game.swift
//  Projet 3 - DA iOS
//
//  Created by Mustapha Gherras on 26/09/2017.
//  Copyright © 2017 Mustapha Gherras. All rights reserved.
//

import Foundation

// MARK: - Game Class Definition
class Game {
    
    // MARK: - Helper for prints
    let printer = Printer()
    
    
    // MARK: - Method to launch the global game
    public func newGame() {
        printer.presentation()
        addPlayer()
        addCharacterTeam(player: Statics.players[0]!)
        addCharacterTeam(player: Statics.players[1]!)
        
    }
    
    // MARK: - Adding Player
    private func addPlayer() {
        for players in Statics.numberOfPlayers {
            printer.nameThePlayer(numberOfPlayers: players)
            if let reader = readLine() {
                if reader.characters.count > 0 && !(Statics.existingNamesPlayers.contains(reader)) {
                    Statics.players[players] = Player(name: reader)
                    Statics.existingNamesPlayers.append(reader)
                } else {
                    printer.nameThePlayersDifferently()
                    Statics.existingNamesPlayers.removeAll(keepingCapacity: true)
                    addPlayer()
                    // BUG TO FIX
                }
            }
        }
    }
    
    // MARK: - Adding Characters to Team, Repeat if wrong entry, Printing the champ you've picked
    private func addCharacterTeam(player: Player) {
        
        for i in Statics.numberOfCharacterPerPlayer {
            printer.addingCharacter(player: player)
            if let reader = readLine() {
                switch reader {
                case "1":
                    player.characters.append(Fighter())
                case "2":
                    player.characters.append(Mage())
                case "3":
                    player.characters.append(Colossus())
                case "4":
                    player.characters.append(Dwarf())
                default:
                  printer.validNumber()
                }
            }
            addCharacterName(player: player, index: i)
            printer.youHaveSelected(player: player, index: i)
            
        }
        //print("You've selected \(Player.characters[self.characters.count].name)")
    }
    
    // MARK: - Adding Character Name same checking of adding a player
    private func addCharacterName(player: Player, index: Int) {
        printer.validNameForCharacter()
        if let reader = readLine() {
            if reader.characters.count > 0 && !(Statics.existingNamesCharacter.contains(reader)) {
                player.characters[index].nammed = reader
                Statics.existingNamesCharacter.append(reader)
            } else {
                printer.differentName()
                addCharacterName(player: player, index: index)
            }
        }
    }
}
