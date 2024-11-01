//
//  Client_Purchases.swift
//  KisanSecure
//
//  Created by Manraj Singh on 29/10/24.
//

import SwiftUI

// Dummy data model for farmers
struct Farmer {
    let name: String
    let crop: String
    let quantity: String
    let priceRange: String
}

struct Client_Purchases: View {
    // Sample data
   
    let farmers: [Farmer] = [
        Farmer(name: "John Doe", crop: "Wheat", quantity: "500 kg", priceRange: "$300 - $400"),
        Farmer(name: "Jane Smith", crop: "Rice", quantity: "300 kg", priceRange: "$200 - $300"),
        Farmer(name: "Rajesh Kumar", crop: "Corn", quantity: "450 kg", priceRange: "$250 - $350"),
        Farmer(name: "Aisha Khan", crop: "Soybean", quantity: "200 kg", priceRange: "$150 - $250"),
        Farmer(name: "Akash Sharma", crop: "Potato", quantity: "600 kg", priceRange: "$180 - $280")
    ]
    var body: some View {
        NavigationView {
            List(farmers, id: \.name) { farmer in
                VStack(alignment: .leading) {
                    Text(farmer.name)
                        .font(.headline)
                        .foregroundColor(.green) // Blue color for farmer name
                    Text("Crop: \(farmer.crop)")
                        .foregroundColor(.green) // Blue color for crop
                    Text("Quantity: \(farmer.quantity)")
                        .foregroundColor(.green) // Blue color for quantity
                    Text("Price Range: \(farmer.priceRange)")
                        .foregroundColor(.green) // Blue color for price range
                }
                .padding()
                .background(Color(.systemGreen).opacity(0.1)) // Light blue background for each card
                .cornerRadius(8)
            }
            .navigationTitle("Farmer Listings")
            .navigationBarItems(trailing: NavigationLink(destination: Login()){
                Text("Logout")
                    .foregroundColor(.red) // Blue color for logout button
            })
            .listStyle(PlainListStyle())
            .padding()
            .background(Color.green.opacity(0.1))
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    Client_Purchases()
}
