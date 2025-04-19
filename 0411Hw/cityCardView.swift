
import SwiftUI


struct CityCardView: View {
    let city: City
    
    @Environment(\.horizontalSizeClass) private var hSizeClass

    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Image(city.imageName)
                .resizable()
                .scaledToFill()
                .frame(height: hSizeClass == .regular ? 400 : 200)
                .frame(maxWidth: .infinity)
                .clipped()
                .cornerRadius(10)
            
            Text(city.name)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .padding()
                .background(
                    LinearGradient(colors: [.black.opacity(0.7), .clear], startPoint: .bottom, endPoint: .top)
                )
        }
    }
}

#Preview {
    CityCardView(
        city: City(
            name: "魁北克",
            imageName: "quebec",
            spots:[],// ⚠️ 要傳一個 [Spot]
            hotels: []
        )
    )
}
