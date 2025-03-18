import SwiftUI

struct LandmarkList: View {
    @State private var showFavoritesOnly = false

    var filteredLandmarks: [Landmark] {
        landmarks.filter { $0.isFavorite }
    }

    var body: some View {
        NavigationSplitView {
            List {
                Toggle("Favorites only", isOn: $showFavoritesOnly)
                ForEach(showFavoritesOnly ?
                    filteredLandmarks : landmarks)
                { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .animation(.default, value: showFavoritesOnly)
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
}
