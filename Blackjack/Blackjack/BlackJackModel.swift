//
//  BlackJackModel.swift
//  Blackjack
//
//  Created by Josh Reichman on 2/9/18.
//  Copyright © 2018 Josh Reichman. All rights reserved.
//

import Foundation
import UIKit

enum Suit: Int {
    case club = 0, spade, diamond, heart
    func simpleDescription() -> String{
        switch self {
        case .club:
            return "club"
        case .spade:
            return "spade"
        case .diamond:
            return "diamond"
        case .heart:
            return "heart"
        }
    }
}

class Card {
    var suit: Suit = .club
    var digit = 1
    var isFaceUp = true
    init(suit: Suit, digit: Int) {
        self.suit = suit
        self.digit = digit
    }
    
    static func generateDeck() -> [Card]{
        var deckOfCards = [Card]()
        for i in 0...4{
            for j in 1...13{
                deckOfCards.append(Card(suit: Suit(rawValue: i)!, digit: j))
            }
        }
        return deckOfCards
    }
    func getCardImage() -> UIImage? {
        if isFaceUp{
            return UIImage(named: "\(suit.simpleDescription())-\(digit).png") //name-#.png
        }
        else{
            return UIImage(named: "card-back.png") //card-back.png
        }
    }
}

class BlackJackGameModel {
    private var cards = [Card]()
    private var playerCards = [Card]()
    private var dealerCards = [Card]()
    
    let maxPlayerCards = 5
    
    init() {
        resetGame()
    }
    
    func resetGame() {
        cards = Card.generateDeck()
        //shuffle code here
        playerCards = [Card]()
        dealerCards = [Card]()
    }
    func nextPlayerCard() -> Card{
        let card = cards.removeFirst()
        playerCards.append(card)
        return card
    }
    func nextDealerCard() -> Card{
        let card = cards.removeFirst()
        dealerCards.append(card)
        return card
    }
    func playerCardAtIndex(index:Int) -> Card?{
        if index < playerCards.count{
            return playerCards[index]
        }
        else{
            return nil
        }
    }
    func dealerCardAtIndex(index:Int) -> Card?{
        if index < dealerCards.count{
            return dealerCards[index]
        }
        else{
            return nil
        }
    }
}
/*
 func shuffle(cards: [Card]) -> [Card]{
 
 }
 */
