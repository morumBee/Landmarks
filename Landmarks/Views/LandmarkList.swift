import SwiftUI

struct LandmarkList: View {
    @State private var showFavoritesOnly = true

    var filteredLandmarks: [Landmark] {
        landmarks.filter { $0.isFavorite }
    }

    var body: some View {
        NavigationSplitView {
            List(showFavoritesOnly ?
                filteredLandmarks : landmarks)
            { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
}
