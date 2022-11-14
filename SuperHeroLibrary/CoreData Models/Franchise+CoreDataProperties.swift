// Created by Prof. H in 2022
// Part of the SuperHero project
// Using Swift 5.0
// Qapla'
//

import Foundation
import CoreData


extension Franchise {

  @nonobjc public class func fetchRequest() -> NSFetchRequest<Franchise> {
    return NSFetchRequest<Franchise>(entityName: "Franchise")
  }

  @NSManaged public var name: String?
  @NSManaged public var hero: NSSet?
  
  public var wrappedName: String {
    name ?? "Unknown Name"
  }
  
  public var heroArray: [Hero] {
    let set = hero as? Set<Hero> ?? []
    return set.sorted {
      $0.wrappedName < $1.wrappedName
    }
  }

}

// MARK: Generated accessors for hero
extension Franchise {

  @objc(addHeroObject:)
  @NSManaged public func addToHero(_ value: Hero)

  @objc(removeHeroObject:)
  @NSManaged public func removeFromHero(_ value: Hero)

  @objc(addHero:)
  @NSManaged public func addToHero(_ values: NSSet)

  @objc(removeHero:)
  @NSManaged public func removeFromHero(_ values: NSSet)

}

extension Franchise : Identifiable {

}
