//
//  Farmer_Info.swift
//  KisanSecure
//
//  Created by Manraj Singh on 29/10/24.
//

import SwiftUI

struct Farmer_Info: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.green.opacity(0.3) // Background color
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    HStack {
                        Text("Welcome Kisan")
                            .font(.largeTitle) // Larger font for the welcome message
                            .fontWeight(.bold)
                            .foregroundColor(.blue) // White color for better contrast
                        Spacer()
                        NavigationLink(destination: Login()) {
                            Text("Logout")
                                .foregroundColor(.red)
                                .fontWeight(.bold)
                        }
                    }
                    .padding()

                    Spacer()

                    // Earnings Information
                    VStack(spacing: 20) {
                        Text("I have used the Kisan Secure app and my earnings have doubled now")
                            .font(.headline) // Headline font for emphasis
                            .multilineTextAlignment(.center) // Center text
                            .padding()
                            .background(Color.white.opacity(0.8)) // White background for contrast
                            .cornerRadius(10) // Rounded corners
                            .shadow(radius: 5) // Shadow for depth

                        Text("Your Earnings: 10,000 INR")
                            .font(.title2) // Title font for earnings
                            .padding()
                            .background(Color.green.opacity(0.8)) // Green background for earnings
                            .cornerRadius(10)
                            .shadow(radius: 5)

                        Text("Food Served So Far: 120 KG")
                            .font(.title2) // Title font for food served
                            .padding()
                            .background(Color.orange.opacity(0.8)) // Orange background for food served
                            .cornerRadius(10)
                            .shadow(radius: 5)
                    }
                    .padding()

                    Spacer()
                }
                .padding()
            }
            .navigationBarBackButtonHidden(true)
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    Farmer_Info()
}
