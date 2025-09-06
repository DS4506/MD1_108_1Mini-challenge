//
//  MD1_108_1Mini_challengeApp.swift
//  MD1_108_1Mini challenge
//
//  Created by Willie Earl on 9/6/25.
//

import SwiftUI

@main
struct MD1_108_1Mini_challengeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
