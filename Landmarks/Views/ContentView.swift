//
//  ContentView.swift
//  Landmarks
//
//  Created by Morumbi on 3/16/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)

            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack {
                Text("Turtle Rock")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National park")
                    Spacer()
                    Text("California")
                }
                .font(.subheadline)
                .foregroundStyle(.secondary)
                Divider()
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
