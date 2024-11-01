//
//  Client_Main.swift
//  KisanSecure
//
//  Created by Manraj Singh on 29/10/24.
//

import SwiftUI

struct Client_Main: View {
    // List of interests
    let interests = ["Rice", "Wheat", "Pulses", "Milleats", "Coffee", "Tea", "Fruits", "Vegetables","Cotton","Sugarcane","Rubber","Coconut"]
    
    // State to track selected interests
    @State private var purchase = false
    @State private var selectedInterests: Set<String> = []
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.green.opacity(0.3).ignoresSafeArea()
                
                VStack {
                    Text("Select Your Crops!")
                        .font(.largeTitle)
                        .padding()
                    
                    // Grid of interest buttons
                    let columns = Array(repeating: GridItem(.flexible(), spacing: 20), count: 2)
                    
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(interests, id: \.self) { interest in
                            InterestButton(interest: interest, isSelected: selectedInterests.contains(interest)) {
                                toggleInterest(interest)
                            }
                        }
                    }
                    .padding()
                    
                    Spacer()
                    
                    // Button to submit selected interests
                    Button(action: {
                        purchase = true
                        print("Selected Interests: \(selectedInterests)")
                    }) {
                        Text("Submit")
                            .font(.headline)
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.green)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding()
                    NavigationLink(destination: Client_Purchases(), isActive: $purchase) {}
                    
                }
            }
        }
        .navigationBarBackButtonHidden(true)
    }
    // Function to toggle interests
    private func toggleInterest(_ interest: String) {
        if selectedInterests.contains(interest) {
            selectedInterests.remove(interest)
        } else {
            selectedInterests.insert(interest)
        }
    }
}

#Preview {
    Client_Main()
}

// Custom Button for interests
struct InterestButton: View {
    var interest: String
    var isSelected: Bool
    var action: () -> Void
    
    var body: some View {
        Text(interest)
            .font(.headline)
            .padding()
            .frame(maxWidth: .infinity)
            .background(isSelected ? Color.blue : Color.white.opacity(1.0))
            .foregroundColor(isSelected ? .white : .black)
            .cornerRadius(10)
            .onTapGesture {
                action()
            }
    }
}

// Preview
struct InterestSelectionView_Previews: PreviewProvider {
    static var previews: some View {
        Client_Main()
    }
}
