import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapView()
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
        VStack(alignment: .leading) {
            Text("RollerCoaster")
                .font(.title)
            HStack {
                Text("Children’s Grand Park")
                    .font(.subheadline)
                Text("Achasan")
                    .font(.subheadline)
                }
            .font(.subheadline)
            .foregroundStyle(.secondary)
            
            Divider()
            Text("About RollerCoaster")
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
