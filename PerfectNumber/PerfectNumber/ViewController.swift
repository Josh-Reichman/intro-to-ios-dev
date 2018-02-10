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
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        textField.resignFirstResponder()
    }
    
    @IBAction func calculate(_ sender: UIButton) {
        resultLabel.text = String(describing: perfectFinder(start: Int(startField.text!)!, end: Int(endField.text!)!))
    }
    func perfectFinder(start: Int, end: Int) -> Int? {
        if(start>end){
            return nil
        }
        var currentNumber : Int
        if(start <= 1){
            currentNumber = 2
        }
        else{
            currentNumber = start
        }
        var temp = currentNumber
        while (currentNumber <= end) {
            var sum = 0
            temp = currentNumber
            for n in 1 ... currentNumber-1
            {
                if(currentNumber%n==0)
                {
                    sum = sum + n
                }
            }
            if(sum == temp)
            {
                return currentNumber
            }
            currentNumber+=1
        }
        return nil
    }
    

}
