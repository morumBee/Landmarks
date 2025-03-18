//
//  FavoriteButton.swift
//  Landmarks
//
//  Created by Morumbi on 3/18/25.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    var body: some View {
        Button {
            isSet.toggle()
        }
        label: {
            Image(systemName: isSet ? "star.fill" : "star")
                .foregroundStyle(isSet ? .yellow : .gray)
                .padding(.leading, 5)
        }
    }
}

#Preview {
    FavoriteButton(isSet: .constant(true))
}
