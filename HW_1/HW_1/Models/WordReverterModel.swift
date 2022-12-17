//
//  WordReverterModel.swift
//  HW_1
//
//  Created by VITALI KAZLOU on 12/18/22.
//

import Foundation

class HelloFormer {
    private let result = "HELLO"
    
    func isConvertable(possibleHello: String) -> Bool {
        for char in possibleHello {
            if !result.contains(char) {
                return false
            }
        }
        
        return possibleHello.count == result.count
    }
}
