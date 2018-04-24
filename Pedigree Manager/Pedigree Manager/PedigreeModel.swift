//
//  PedigreeModel.swift
//  Pedigree Manager
//
//  Created by Josh Reichman on 4/4/18.
//  Copyright © 2018 Josh Reichman. All rights reserved.
//

import Foundation

class Pedigree{
    var family: [Individual]?
    let proband: Individual
    
    init(proband: Individual, _ family: [Individual]?){
        self.proband = proband
        if (family?.isEmpty)!{
            self.family = nil
        }
        else{
            self.family = family
        }
    }
}
