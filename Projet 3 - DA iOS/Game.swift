//
//  Game.swift
//  Projet 3 - DA iOS
//
//  Created by Mustapha Gherras on 26/09/2017.
//  Copyright © 2017 Mustapha Gherras. All rights reserved.
//

import Foundation

let printer = Printer()
// MARK: - Game Class Definition
class Game {
    
    // MARK: - Helper for prints
    
    static let instance = Game()
    
    // MARK: - Method to launch the global game
    public func newGame() {
        
        // Selecting Players, addingPlayers
        printer.presentation()
        addPlayer()
        for i in Statics.numberOfPlayers {
            if let player = Statics.players[i] {
                addCharacterTeam(player)
            }
        }
        
        guard let playerOne = Statics.players[0],
            let playerTwo = Statics.players[1]
            else {
                printer.anErrorOccursWithPlayers()
                return
        }
        
        var currentPlayer = playerOne
        var currentAdv = playerTwo
        
        while currentPlayer.isAlive {
            let selectedCharacter = currentPlayer.selectCharacter()
            Box.instance.boxAppear(character: selectedCharacter)
            let selectedTarget = currentPlayer.selectTarget(selection: selectedCharacter, adversary: currentAdv)
            selectedCharacter.doAction(target: selectedTarget)
            currentAdv.updateTeam()
            swap(&currentPlayer, &currentAdv)
            Statics.numberOfTurns += 1
        }
        swap(&currentPlayer, &currentAdv)
        Statics.numberOfTurns += 1
        printer.displayWinner(winner: currentPlayer)
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
    private func addCharacterTeam(_ player: Player) {
        var i = 0
        
        while i < Statics.numberOfCharacterPerPlayer {
            printer.addingCharacter(player)
            switch Global.inputInt() {
            case 1:
                player.characters.append(Fighter())
            case 2:
                player.characters.append(Mage())
            case 3:
                player.characters.append(Colossus())
            case 4:
                player.characters.append(Dwarf())
            default:
                printer.validNumber()
                addCharacterTeam(player)
            }
            printer.youHaveSelected(player: player, index: i)
            i += 1
        }
    }
}
