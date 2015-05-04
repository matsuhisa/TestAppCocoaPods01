//  Categories.swift
//  TestAppCocoaPods01

import Foundation
import CoreData

class Categories: NSManagedObject {

    @NSManaged var name: String
    
    func name_plus() -> NSString{
        var neme_plus = self.name + "だよ"
        return neme_plus
    }
}
