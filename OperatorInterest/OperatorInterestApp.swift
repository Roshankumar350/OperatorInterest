//
//  OperatorInterestApp.swift
//  OperatorInterest
//
//  Created by Nidhi Kumari on 10/08/24.
//

import SwiftUI

@main
struct OperatorInterestApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            DerivativeAnalyticView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
