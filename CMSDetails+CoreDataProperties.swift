//
//  CMSDetails+CoreDataProperties.swift
//  Amrita Connect
//
//  Created by Vaisakhkrishnan K on 18/06/22.
//
//

import Foundation
import CoreData


extension CMSDetails {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<CMSDetails> {
        return NSFetchRequest<CMSDetails>(entityName: "CMSDetails")
    }

    @NSManaged public var name: String?
    @NSManaged public var rollNumber: String?

}

extension CMSDetails : Identifiable {

}
