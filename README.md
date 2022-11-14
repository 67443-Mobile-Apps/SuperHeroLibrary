Super Hero Library
---

This was a basic project I whipped up based of an old 67-311 database exercise on super heroes.  The main point was to demonstrate one-to-many relations in CoreData and how they differ from traditional databases.  A few notes on this project:

1. I wrote this using Xcode 14, but if I create the intial project with CoreData checked off, I get a situation where the screen in the simulator is completely black.  If I create the initial project without CoreData and use Paul Hudson's (@twostraws) file `DataController.swift` and incorporate that into the main app `SuperHeroLibraryApp.swift`, it all works fine.

1. I do have some other ideas to expand in the future (include the people table from 67311, and the like), but for now, just a single screen app. When first running, click "Add Examples" button at the buttom of the screen to add 9 heroes to the database.

1. I did use the `SuperHero.xcdatamodeld` to create two entities, `Franchise` (DC, Marvel, New England Comics, etc. -- basically publishers) and `Hero` (which just have names and powers for now).  I also used the `xcdatamodeld` to set up the relationships and constraints.

1. In order to have more control and deal with options more transparently, I set the `Codegen` option on all entities to "Manual/None" and then used the `Editor > Create NSManagedObject subclasses ...` option to export these to code for manipulation.  In particular, have some wrappers to handle nil cases as well as an array of heros with a franchise.

More to come, but this gets the relational part across for now.

Qapla'