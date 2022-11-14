// Created by Prof. H in 2022
// Part of the SuperHeroLibrary project
// Using Swift 5.0
// Qapla'

import SwiftUI

struct ContentView: View {
  
  @Environment(\.managedObjectContext) private var moc

  @FetchRequest(sortDescriptors: [])
  var franchises: FetchedResults<Franchise>
  
  
  var body: some View {
    VStack {
      Text("Super Hero Franchises")
        .font(.title2)
        .fontWeight(.bold)
        .foregroundColor(.blue)
      List {
        ForEach(franchises, id: \.self) { franchise in
          Section(franchise.wrappedName) {
            ForEach(franchise.heroArray, id: \.self) { hero in
              HeroRowView(hero: hero)
            }
          }
          
        }
      }
      Button("Add Examples") {
        // from old 67311 database example
        let hero1 = Hero(context: moc)
        hero1.name = "Batman"
        hero1.power = "None -- just totally awesome"
        hero1.franchise = Franchise(context: moc)
        hero1.franchise?.name = "DC"
        
        let hero2 = Hero(context: moc)
        hero2.name = "Aquaman"
        hero2.power = "Breathes underwater; communicates with marine life"
        hero2.franchise = Franchise(context: moc)
        hero2.franchise?.name = "DC"
        
        let hero3 = Hero(context: moc)
        hero3.name = "Wonder Woman"
        hero3.power = "Enhanced senses and strength"
        hero3.franchise = Franchise(context: moc)
        hero3.franchise?.name = "DC"
        
        let hero4 = Hero(context: moc)
        hero4.name = "Spiderman"
        hero4.power = "Wall-crawling; enhanced agility; spider-sense"
        hero4.franchise = Franchise(context: moc)
        hero4.franchise?.name = "Marvel"
        
        let hero5 = Hero(context: moc)
        hero5.name = "Captain America"
        hero5.power = "Enhanced strength, durability, agility and reflexes"
        hero5.franchise = Franchise(context: moc)
        hero5.franchise?.name = "Marvel"
        
        let hero6 = Hero(context: moc)
        hero6.name = "Superman"
        hero6.power = "Great strength; near-invulnerability; X-ray vision; flight"
        hero6.franchise = Franchise(context: moc)
        hero6.franchise?.name = "DC"
        
        let hero7 = Hero(context: moc)
        hero7.name = "Iron Man"
        hero7.power = "None apart from iron suit, but is extremely intelligent"
        hero7.franchise = Franchise(context: moc)
        hero7.franchise?.name = "Marvel"
        
        let hero8 = Hero(context: moc)
        hero8.name = "Thor"
        hero8.power = "Incredible strength; additional powers from hammer, Mjolnir"
        hero8.franchise = Franchise(context: moc)
        hero8.franchise?.name = "Marvel"
        
        let hero9 = Hero(context: moc)
        hero9.name = "Flash"
        hero9.power = "Extreme speed; accelerated healing; can generate electricity"
        hero9.franchise = Franchise(context: moc)
        hero9.franchise?.name = "DC"

        try? moc.save()
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
