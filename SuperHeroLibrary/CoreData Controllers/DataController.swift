// Original code from Paul Hudson (@twostraws)
// Part of the SuperHeroLibrary project
// Using Swift 5.0



import Foundation
import CoreData

class DataController: ObservableObject {
    let container = NSPersistentContainer(name: "SuperHero")

  init() {
    container.loadPersistentStores { description, error in
      if let error = error {
        print("Core Data failed to load: \(error.localizedDescription)")
      }
      
      self.container.viewContext.mergePolicy = NSMergePolicy.mergeByPropertyObjectTrump
      
    }
  }
}
