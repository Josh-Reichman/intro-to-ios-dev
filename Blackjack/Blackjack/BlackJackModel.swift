//
//  BlackJackModel.swift
//  Blackjack
//
//  Created by Josh Reichman on 2/9/18.
//  Copyright © 2018 Josh Reichman. All rights reserved.
//

import Foundation

enum Suit: Int {
    case club = 0, spade, diamond, heart
    func simpleDescription() -> String{
        switch self {
        case .club:
            return "club"
        default:
            return ""
        }
    }
}

class Card {
    var suit: Suit = .club
    var digit = 1
}
