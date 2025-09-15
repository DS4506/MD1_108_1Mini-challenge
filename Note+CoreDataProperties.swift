//
//  Note+CoreDataProperties.swift
//  MD1_108_1Mini challenge
//
//  Created by Willie Earl on 9/15/25.
//
//

import Foundation
import CoreData


extension Note {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Note> {
        return NSFetchRequest<Note>(entityName: "Note")
    }

    @NSManaged public var date: Date?
    @NSManaged public var text: String?

}

extension Note : Identifiable {

}
