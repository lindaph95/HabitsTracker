//
//  SpentTimeEntity+CoreDataProperties.swift
//  MyFirstApp
//
//  Created by Phan Linda on 20/04/2021.
//
//

import Foundation
import CoreData


extension SpentTimeEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<SpentTimeEntity> {
        return NSFetchRequest<SpentTimeEntity>(entityName: "SpentTimeEntity")
    }

    @NSManaged public var id: UUID
    @NSManaged public var minutes: Int64
    @NSManaged public var date: Date

}



extension SpentTimeEntity : Identifiable {

}
