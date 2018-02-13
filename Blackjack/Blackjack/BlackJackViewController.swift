//
//  BlackJackViewController.swift
//  Blackjack
//
//  Created by Josh Reichman on 2/9/18.
//  Copyright © 2018 Josh Reichman. All rights reserved.
//

import UIKit
class BlackJackViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var dealerCards: [UIImageView]!
    @IBOutlet var playerCards: [UIImageView]!
    @IBOutlet weak var numOfDecksField: UITextField!
    @IBOutlet weak var generateDecksButton: UIButton!
    
    var gameModel: BlackJackGameModel
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    required init?(coder aDecoder: NSCoder) {
        gameModel = BlackJackGameModel()
        super.init(coder: aDecoder)
    }
    
    func restartGame(){
        gameModel.resetGame()
        var card = gameModel.nextDealerCard()
        card = gameModel.nextDealerCard()
        card.isFaceUp = false
        
        card = gameModel.nextPlayerCard()
        card = gameModel.nextPlayerCard()
        renderCards()
    }
    
    func renderCards() {
        for i in 0 ..< gameModel.maxPlayerCards {
            if let dealerCard = gameModel.dealerCardAtIndex(index:i){
                dealerCards[i].image = dealerCard.getCardImage()
            }
            else{
                dealerCards[i].isHidden = true
            }
            
            if let playerCard = gameModel.playerCardAtIndex(index:i){
                playerCards[i].image = playerCard.getCardImage()
            }
            else{
                playerCards[i].isHidden = true
            }
        }
    }
    
    @IBAction func userClickGenerate(_ sender: UIButton) {
        var decks = [[Card]]()
        for _ in 0 ..< Int(numOfDecksField.text!)!{
            decks.append(Card.generateDeck())
        }
        
    }
    @IBAction func userClickShuffle(_ sender: UIButton) {
        
        var decksCopy = gameModel.getDeck()
        var deckShuffled = [[Card]]()
        for i in 0 ..< Int(numOfDecksField.text!)!{
            deckShuffled.append(gameModel.shuffle(cards: [decksCopy[i]]) )
        }
        //decksCopy = deckShuffled[0]
        print(deckShuffled)
    }
    @IBAction func userClickStand(_ sender: UIButton) {
    }
    @IBAction func userClickHit(_ sender: UIButton) {
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if(numOfDecksField.text == "" || (Int(numOfDecksField.text!)!) <= 0){
            numOfDecksField.text = "1"
        }
        numOfDecksField.resignFirstResponder()
    }
}

