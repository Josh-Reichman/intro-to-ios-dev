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
    var queueList = [String]()
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
        if(inputField.text != ""){
            queueList.append(inputField.text!)
            queue.enqueue(Int(inputField.text!)!)
        }
    }
    
    @IBAction func dequeuePressed(_ sender: UIButton) {
        if(!queueList.isEmpty){
            queueList.removeFirst()
            queue.dequeue()
        }
    }
    
    @IBAction func showElementsPressed(_ sender: UIButton) {
        if !queue.isEmpty() {
            var temp = ""
            for i in queueList{
                temp.append(i + " ")
            }
            elementsLabel.text = temp
        }
        else{
            elementsLabel.text = "No Elements"
        }
    }
    
}

