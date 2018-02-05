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
    
    @IBAction func calculateBMIButton(_ sender: UIButton) {
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        textField.resignFirstResponder()
    }

}
