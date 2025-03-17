import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List {
            ForEach(landmarks) { landmark in
                LandmarkRow(landmark: landmark)
            }
        }
        .listStyle(.inset)
    }
}

#Preview {
    LandmarkList()
}
