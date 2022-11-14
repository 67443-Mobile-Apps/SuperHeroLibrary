// Created by Prof. H in 2022
// Part of the SuperHero project
// Using Swift 5.0
// Qapla'
//

import Foundation
import CoreData


extension Hero {

  @nonobjc public class func fetchRequest() -> NSFetchRequest<Hero> {
    return NSFetchRequest<Hero>(entityName: "Hero")
  }

  @NSManaged public var name: String?
  @NSManaged public var power: String?
  @NSManaged public var franchise: Franchise?
  
  public var wrappedName: String {
    name ?? "Unknown Name"
  }
  
  public var wrappedPower: String {
    power ?? "Unknown Power"
  }

}

extension Hero : Identifiable {

}
