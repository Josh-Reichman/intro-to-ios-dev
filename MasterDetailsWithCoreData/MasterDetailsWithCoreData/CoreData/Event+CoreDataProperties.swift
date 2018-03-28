//
//  Event+CoreDataProperties.swift
//  MasterDetailsWithCoreData
//
//  Created by Josh Reichman on 3/28/18.
//  Copyright © 2018 Josh Reichman. All rights reserved.
//
//

import Foundation
import CoreData


extension Event {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Event> {
        return NSFetchRequest<Event>(entityName: "Event")
    }

    @NSManaged public var timestamp: NSDate?

}
