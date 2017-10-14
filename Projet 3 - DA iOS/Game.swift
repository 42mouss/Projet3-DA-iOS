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
    static let instance = Game()
    
    // MARK: - Method to launch the global game
    public func newGame() {
        var currentPlayer = Statics.players[0]
        var currentAdv = Statics.players[1]
        
        printer.presentation()
        addPlayer()
        for i in Statics.numberOfPlayers {
            addCharacterTeam(player: Statics.players[i]!, index: 0)
        }
        if let currentPlayer = currentPlayer {
            while currentPlayer.isAlive {
                let selectedCharacter = currentPlayer.selectCharacter()
                let selectedTarget = currentPlayer.selectTarget(selectedCharacter, currentAdv)
            }
        }
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
                    Statics.existingNamesPlayers.removeAll(keepingCapacity: false)
                    addPlayer()
                }
            }
        }
    }
    
    // MARK: - Adding Characters to Team, Repeat if wrong entry, Printing the champ you've picked
    private func addCharacterTeam(player: Player, index: Int) {
        var i = index
        
        while i < Statics.numberOfCharacterPerPlayer {
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
                    addCharacterTeam(player: player, index: i)
                }
            }
            addCharacterName(player: player, index: i)
            printer.youHaveSelected(player: player, index: i)
            i += 1
        }
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
    
    // MARK: - Handling fights
    private func fightHandler() {
        //
    }
}
