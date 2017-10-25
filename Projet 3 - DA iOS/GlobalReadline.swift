//
//  GlobalReadline.swift
//  Projet 3 - DA iOS
//
//  Created by Mustapha Gherras on 18/10/2017.
//  Copyright © 2017 Mustapha Gherras. All rights reserved.
//

import Foundation

class Global {
    
    // MARK: - Readline for Ints with Manager Error Handling
    static func inputInt() -> Int {
        var selectionNumber = 0
        
        if let response = readLine() {
            if let responseNumber = response.isStringAnInt {
                selectionNumber = responseNumber
            } else {
                printer.validNumber()
                selectionNumber = inputInt()
            }
        }
        return selectionNumber
    }
}

// MARK: - iS String An Int String Class Extension
extension String {
    var isStringAnInt: Int? {
        if Int(self) != nil {
            return Int(self)
        }
        return nil
    }
}
