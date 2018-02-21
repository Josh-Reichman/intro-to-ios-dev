//
//  ViewController.swift
//  Matrix Squarer
//
//  Created by Josh Reichman on 2/19/18.
//  Copyright © 2018 Josh Reichman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputField: UITextField!
    @IBOutlet weak var outputLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func string2MatrixArray(_ Input: String){
        var temp = Input.components(separatedBy: ";")
        var temp2 = Array<[String]>()
        for i in 0..<temp.count{
            temp2.append(temp[i].components(separatedBy: " "))
        }
        outputLabel.text = squareString(temp2)
    }
    
    private func squareString(_ Input: [[String]]) -> String{
        var output = ""
        for m in 0..<Input.count{
            for n in 0..<Input[m].count{
                let temp = Float(Input[m][n])
                output.append(String(temp!*temp!) + ", ")
            }
            output.removeLast(2)
            output.append(";")
        }
        return output
    }
    
}

