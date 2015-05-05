//  Categories.swift
//  TestAppCocoaPods01

import Foundation
import CoreData

class Categories: NSManagedObject {

    @NSManaged var name: String
    @NSManaged var description_text: String?
    @NSManaged var created_at: NSDate?
    @NSManaged var updated_at: NSDate?
    
    func name_plus() -> NSString{
        var neme_plus = self.name + "だよ"
        return neme_plus
    }
}
