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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func userHitShuffle(_ sender: UIButton) {
    }
    @IBAction func userClickStand(_ sender: UIButton) {
    }
    @IBAction func userClickHit(_ sender: UIButton) {
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if(numOfDecksField.text == "" || (Int(numOfDecksField.text!)!) < 0){
            numOfDecksField.text = "1"
        }
        numOfDecksField.resignFirstResponder()
    }
}

