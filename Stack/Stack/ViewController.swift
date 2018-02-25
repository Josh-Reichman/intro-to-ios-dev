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
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func pressedConvertButton(_ sender: UIButton) {
        
    }
    
}

