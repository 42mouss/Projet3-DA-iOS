//
//  Dwarf.swift
//  Projet 3 - DA iOS
//
//  Created by Mustapha Gherras on 26/09/2017.
//  Copyright © 2017 Mustapha Gherras. All rights reserved.
//

import Foundation

// MARK: - Dwarf Class Definition
class Dwarf: Character {
    
    // MARK: - Init Dwarf stats
    override init() {
        super.init()
        self.name = "Dwarf"
        self.lifePoints = 100
        self.damages = 10
    }
}
