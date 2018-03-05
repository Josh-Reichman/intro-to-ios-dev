//
//  SecondViewController.swift
//  MultipleMVCs
//
//  Created by Josh Reichman on 3/5/18.
//  Copyright © 2018 Josh Reichman. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var myText: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var myModel : String?
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
