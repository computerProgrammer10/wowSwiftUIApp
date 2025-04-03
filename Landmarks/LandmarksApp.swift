//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by DANIEL HUSEBY on 4/3/25.
//

import SwiftUI

@main
struct LandmarksApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
