// Created by Prof. H in 2022
// Part of the SuperHeroLibrary project
// Using Swift 5.0
// Qapla'

import SwiftUI

struct HeroRowView: View {
  var hero: Hero
  var body: some View {
    VStack {
      HStack {
        Text(hero.wrappedName)
          .fontWeight(.bold)
        Spacer()
      }
      HStack {
        Text(hero.wrappedPower)
          .font(.caption)
          .foregroundColor(.gray)
        Spacer()
      }
    }
    .padding(1)
  }
}

//struct HeroRowView_Previews: PreviewProvider {
//    static var previews: some View {
//        HeroRowView()
//    }
//}
