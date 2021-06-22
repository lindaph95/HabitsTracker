//
//  MyFirstAppApp.swift
//  MyFirstApp
//
//  Created by Linda Phan on 11/11/2020.
//

import SwiftUI

@main
struct MySecondAppApp: App {
    
    let persistenceController = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            MainTabView()
                .environmentObject(HabitLibrary())
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
              
        }
    }
}

