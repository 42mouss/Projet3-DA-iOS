//
//  GlobalReadline.swift
//  Projet 3 - DA iOS
//
//  Created by Mustapha Gherras on 18/10/2017.
//  Copyright © 2017 Mustapha Gherras. All rights reserved.
//

import Foundation

class Global {
    static func inputInt() -> Int {
        var selectionNumber = 0
        
        if let response = readLine() {
            if let responseNumber = response.isStringAnInt {
                selectionNumber = responseNumber
            } else {
                print("Veuillez entrer un numéro valide")
                selectionNumber = inputInt()
            }
        }
        
        return selectionNumber
    }
    
//    static func inputStr() -> String {
//        let response = readLine() {
//        }
//    }
}

extension String {
    var isStringAnInt: Int? {
        if Int(self) != nil {
            return Int(self)
        }
        return nil
    }
}
