//
//  BMIViewController.swift
//  BMICalculator
//
//  Created by Josh Reichman on 2/5/18.
//  Copyright © 2018 Josh Reichman. All rights reserved.
//

import UIKit

class BMIViewController: UIViewController, UITextFieldDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        weightText.delegate = self
        heightText.delegate = self
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var weightText: UITextField!{
        didSet{
            weightText.delegate = self
        }
    }
    @IBOutlet weak var heightText: UITextField!{
        didSet{
            heightText.delegate = self
        }
    }
    @IBOutlet weak var bmiResult: UILabel!
    
    var weight: Double?
    var height : Double?
    var bmi : Double? {
        get{
            if(weight != nil && height != nil){
                return (weight!*703)/(height!*height!)
            }
            else{
                return nil
        }
        }
    }
    
    @IBAction func calculateBMIButton(_ sender: UIButton) {
        if let tmp = bmi{
            bmiResult.text = String(tmp)
        }
        updateUI()
    }
    
    func updateUI(){
        if let tmp = bmi{
            bmiResult.text = String(format:"%.1f",tmp)
        }
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
        textField.resignFirstResponder()
        if let tmp = textField.text{
            switch (textField){
            case weightText: weight = Double(tmp)
            case heightText: height = Double(tmp)
            default: break
            }
        }
        //updateUI()
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        updateUI()
        return true
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        weightText.resignFirstResponder()
        heightText.resignFirstResponder()
    }
}
