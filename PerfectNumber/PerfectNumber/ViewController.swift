//
//  ViewController.swift
//  PerfectNumber
//
//  Created by Josh Reichman on 2/9/18.
//  Copyright © 2018 Josh Reichman. All rights reserved.
//
/*
 A perfect number is a positive integer that is equal to the sum of its proper positive divisors (e.g., 6 = 1+2+3). Develop an app that accepts a start integer and an end integer. Search for the first perfect number in between if there is one. You need to use UITextField to accept inputs and use UILabel to give your answer.
 */
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var startField: UITextField!
    @IBOutlet weak var endField: UITextField!
    @IBOutlet weak var calculateButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        textField.resignFirstResponder()
        
    }
    //https://rosettacode.org/wiki/Perfect_numbers#Swift
    func perfect(n:Int) -> Bool {
        var sum = 0
        for i in 1..<n {
            if n % i == 0 {
                sum += i
            }
        }
        return sum == n
    }

}
