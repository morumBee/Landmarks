//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Morumbi on 3/16/25.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @State private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
