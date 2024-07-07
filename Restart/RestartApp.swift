//
//  RestartApp.swift
//  Restart
//
//  Created by Yasser Aboibrahim on 03/07/2024.
//

import SwiftUI

@main
struct RestartApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
