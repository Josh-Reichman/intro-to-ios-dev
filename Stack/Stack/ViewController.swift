//
//  ViewController.swift
//  Stack
//
//  Created by Josh Reichman on 2/23/18.
//  Copyright © 2018 Josh Reichman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var stack: Stack<Any>
    
    @IBOutlet weak var inputField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    required init?(coder aDecoder: NSCoder) {
        stack = Stack<Any>()
        super.init(coder: aDecoder)
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        dec2stack(Int(inputField.text!)!)
        stack2string()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func pressedConvertButton(_ sender: UIButton) {
        
        if stack.isEmpty(){
            dec2stack(Int(inputField.text!)!)
            stack2string()
        }
    }
    
    func dec2bin(_ base10: Int) -> [Int]{
        var decimal = base10
        var bin = [Int]()
        repeat {
            bin.append(Int(String(decimal%2))!)
            decimal = decimal/2
        } while decimal > 0
        return bin
    }
    
    func dec2stack(_ base10: Int){
        var decimal = base10
        repeat {
            stack.push(Int(String(decimal%2))!)
            decimal = decimal/2
        } while decimal > 0
    }
    func stack2string(){
        var temp: String! = ""
        while !stack.isEmpty(){
            var valueTemp = String(describing: stack.pop()!)
            temp.append(String(valueTemp))
        }
        resultLabel.text = temp
    }
}
