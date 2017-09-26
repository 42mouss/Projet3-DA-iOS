//
//  Fighter.swift
//  Projet 3 - DA iOS
//
//  Created by Mustapha Gherras on 26/09/2017.
//  Copyright © 2017 Mustapha Gherras. All rights reserved.
//

import Foundation

// MARK: - Fighter Class Definition
class Fighter: Character {

    // MARK: - Init Fighter stats
    override init() {
        super.init()
        self.name = "Fighter"
        self.lifePoints = 100
        self.damages = 10
    }
}
