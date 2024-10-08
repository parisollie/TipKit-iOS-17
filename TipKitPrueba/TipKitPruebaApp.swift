//
//  TipKitPruebaApp.swift
//  TipKitPrueba
//
//  Created by Paul F on 07/10/24.
//

import SwiftUI
import TipKit
@main
struct TipKitPruebaApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
            //Vid 464,para configurar los tips
                .task {
                    try? Tips.configure(
                        [
                            //Vid 464, ver el tip de forma imediata.
                            .displayFrequency(.immediate),
                            .datastoreLocation(.applicationDefault)
                        ]
                    )
                }
        }
    }
}

