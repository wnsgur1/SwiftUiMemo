//
//  SwiftUiMemoApp.swift
//  SwiftUiMemo
//
//  Created by dgsw8th38 on 7/16/24.
//

import SwiftUI

@main
struct SwiftUiMemoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainListView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
