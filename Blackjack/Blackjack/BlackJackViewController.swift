//
//  BlackJackViewController.swift
//  Blackjack
//
//  Created by Josh Reichman on 2/9/18.
//  Copyright © 2018 Josh Reichman. All rights reserved.
//

import UIKit
class BlackJackViewController: UIViewController {

    @IBOutlet var dealerCards: [UIImageView]!
    @IBOutlet var playerCards: [UIImageView]!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func userClickStand(_ sender: UIButton) {
    }
    
    @IBAction func userClickHit(_ sender: UIButton) {
    }
}

