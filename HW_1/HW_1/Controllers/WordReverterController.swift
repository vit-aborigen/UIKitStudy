//
//  WordReverterController.swift
//  HW_1
//
//  Created by VITALI KAZLOU on 12/18/22.
//

import Foundation

final class CheckWord {
    private let wordModel = HelloFormer()
    private var userWorld = ""
    
    func setWord(newWord: String) {
        self.userWorld = newWord
    }
    
    func convert() -> String {
        if wordModel.isConvertable(possibleHello: userWorld) {
            return "HELLO"
        }
        return "Failed to convert \(userWorld) to HELLO"
    }
    
}
