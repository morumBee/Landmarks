//
//  ContentView.swift
//  Landmarks
//
//  Created by Morumbi on 3/16/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
