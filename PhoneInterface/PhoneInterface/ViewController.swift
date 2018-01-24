//
//  ViewController.swift
//  PhoneInterface
//
//  Created by Josh Reichman on 1/24/18.
//  Copyright © 2018 Josh Reichman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var callLabel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func digitPressed(_ sender: UIButton) {
        numberLabel.text?.append((sender.currentTitle)!)
        if ((numberLabel.text?.count)! == 10){
            callLabel.isEnabled = true
        }
        else {
            callLabel.isEnabled = false
        }

    }
    
    @IBAction func makeCall(_ sender: UIButton) {
        let temp = 1
    }
    
}

