//
//  ViewController.swift
//  Queue
//
//  Created by Josh Reichman on 2/23/18.
//  Copyright © 2018 Josh Reichman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var inputField: UITextField!
    @IBOutlet weak var elementsLabel: UILabel!
    
    private var queue: Queue<Any>
    
    required init?(coder aDecoder: NSCoder) {
        queue = Queue<Any>()
        super.init(coder: aDecoder)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func enqueuePressed(_ sender: UIButton) {
        queue.enqueue(inputField.text as Any)
    }
    
    @IBAction func dequeuePressed(_ sender: UIButton) {
        queue.dequeue()
    }
    
    @IBAction func showElementsPressed(_ sender: UIButton) {
        if !queue.isEmpty() {
            // put code in here
        }
        else{
            elementsLabel.text = "No Elements"
        }
    }
    
}

