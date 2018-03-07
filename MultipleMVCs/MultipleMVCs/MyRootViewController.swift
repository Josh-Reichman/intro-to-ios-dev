//
//  MyRootViewController.swift
//  MultipleMVCs
//
//  Created by Josh Reichman on 3/5/18.
//  Copyright © 2018 Josh Reichman. All rights reserved.
//
// New File -> Cocoa Touch
import UIKit

class MyRootViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    var myModelInRootVC = "this is rootVC"

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if let id = segue.identifier{
            switch(id){
            case "The2ndViewController":
                //dvc stands for destination view controller
                let dvc = segue.destination as! SecondViewController
                dvc.myModel = "This is actually the 2nd VC"
            case "The3rdViewController":
                let dvc = segue.destination as! ThirdViewController
                //something else
            default:
                break
            }
        }
    }
 

}
