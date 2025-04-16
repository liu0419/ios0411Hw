import SwiftUI


struct ContentView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 16) {
                    ForEach(cities) { city in
                        NavigationLink(destination: CityDetailTabView(city: city)) {
                            CityCardView(city: city)
                                .padding(.horizontal)
                        }
                    }
                }
                .padding(.vertical)
            }
            .navigationTitle("加拿大城市")
        }
    }
}

#Preview {
    ContentView()
}
