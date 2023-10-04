// Created by Prof. H in 2022
// Part of the SuperHeroLibrary project
// Using Swift 5.0
// Qapla'

import SwiftUI

@main
struct SuperHeroLibraryApp: App {
  @StateObject private var dataController = DataController()

  var body: some Scene {
    WindowGroup {
        HeroLibraryView()
        .environment(\.managedObjectContext, dataController.container.viewContext)
    }
  }
}
