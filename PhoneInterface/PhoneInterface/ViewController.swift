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
    @IBOutlet weak var deleteButton: UIButton!
    @IBOutlet weak var hangupButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func digitPressed(_ sender: UIButton) {
        numberLabel.text?.append((sender.currentTitle)!)
        validateNumber()
    }
    
    @IBAction func deleteDigit(_ sender: UIButton) {
        if ((numberLabel.text?.count)! != 0){
            var labelTemp : String! = numberLabel.text!
            labelTemp.removeLast()
            numberLabel.text = labelTemp
            validateNumber()
        }
    }
    @IBAction func makeCall(_ sender: UIButton) {
        numberLabel.text = "call initiated..."
        hangupButton.isEnabled = true
        deleteButton.isEnabled = false
        callLabel.isEnabled = false
    }
    @IBAction func hangUp(_ sender: UIButton) {
        numberLabel.text = ""
        hangupButton.isEnabled = false
        deleteButton.isEnabled = true
    }
    func validateChars() -> Bool {
        return !((numberLabel.text?.contains("*"))! || (numberLabel.text?.contains("#"))!)
    }
    func checkDigitCount() -> Bool {
        return((numberLabel.text?.count)! == 10)
    }
    func validateNumber(){
        if (validateChars() && checkDigitCount()){
            callLabel.isEnabled = true
        }
        else {
            callLabel.isEnabled = false
        }
    }
}

