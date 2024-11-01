
import SwiftUI

struct Farmer_Main: View {
    var body: some View {
        ZStack {
            Color.green.opacity(0.2).ignoresSafeArea()
            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    // Header Section
                    HStack {
                        Text("Varnit, Desh ka Kisan")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.primary)
                        Spacer()
                        NavigationLink(destination: Farmer_Info()) {
                            Text("Info")
                                .foregroundColor(.blue)
                                .fontWeight(.semibold)
                                .padding(.trailing)
                        }
                    }
                    .padding()

                    // Content of the VStack
                    ForEach(0..<6) { _ in
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Crop Name: Wheat")
                                .font(.title2)
                                .fontWeight(.bold)
                            Text("Type: Cereal")
                                .font(.headline)
                            Text("Quality: High")
                                .font(.headline)
                            Text("Quantity: 500 Kg")
                                .font(.headline)
                            Text("Acres: 10 acres")
                                .font(.headline)
                            Text("Info: Good for health, used in various recipes.")
                                .font(.body)
                        }
                        .padding()
                        .background(Color.white.opacity(0.9))
                        .cornerRadius(10)
                        .shadow(color: .gray.opacity(0.3), radius: 5, x: 0, y: 2)

                        Spacer(minLength: 10) // Add some spacing between cards
                    }
                }
                .padding()
                .navigationTitle("Farmer Details")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
        .navigationBarBackButtonHidden(true)
    }
}

// Step 5: Preview the view
#Preview {
    Farmer_Main()
}
