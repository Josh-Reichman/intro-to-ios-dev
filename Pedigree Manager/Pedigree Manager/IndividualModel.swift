//
//  IndividualModel.swift
//  Pedigree Manager
//
//  Created by Josh Reichman on 4/4/18.
//  Copyright © 2018 Josh Reichman. All rights reserved.
//

import Foundation

class Individual {
    var id: Int
    var firstName: String
    var lastName: String
    var gender: Gender
    var father: Individual
    var mother: Individual
    var hasDisease: Bool
    
    init(id: Int, firstName: String, lastName: String, gender: Gender, father: Individual, mother: Individual, hasDisease: Bool){
        self.id = id
        self.firstName = firstName
        self.lastName = lastName
        self.gender = gender
        self.father = father
        self.mother = mother
        self.hasDisease = hasDisease
    }
}

enum Gender {
    case MALE,FEMALE,OTHER
}
