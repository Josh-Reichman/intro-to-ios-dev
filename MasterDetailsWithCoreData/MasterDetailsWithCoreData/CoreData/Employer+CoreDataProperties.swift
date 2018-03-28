//
//  Employer+CoreDataProperties.swift
//  MasterDetailsWithCoreData
//
//  Created by Josh Reichman on 3/28/18.
//  Copyright © 2018 Josh Reichman. All rights reserved.
//
//

import Foundation
import CoreData


extension Employer {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Employer> {
        return NSFetchRequest<Employer>(entityName: "Employer")
    }

    @NSManaged public var name: String?
    @NSManaged public var has: NSSet?

}

// MARK: Generated accessors for has
extension Employer {

    @objc(addHasObject:)
    @NSManaged public func addToHas(_ value: Employee)

    @objc(removeHasObject:)
    @NSManaged public func removeFromHas(_ value: Employee)

    @objc(addHas:)
    @NSManaged public func addToHas(_ values: NSSet)

    @objc(removeHas:)
    @NSManaged public func removeFromHas(_ values: NSSet)

}
