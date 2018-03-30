//
//  Employee+CoreDataProperties.swift
//  MasterDetailsWithCoreData
//
//  Created by Josh Reichman on 3/28/18.
//  Copyright © 2018 Josh Reichman. All rights reserved.
//
//

import Foundation
import CoreData


extension Employee {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Employee> {
        return NSFetchRequest<Employee>(entityName: "Employee")
    }

    @NSManaged public var name: String?
    @NSManaged public var id: Int64
    @NSManaged public var of: Employer?

}
