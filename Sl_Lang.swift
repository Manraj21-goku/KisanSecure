//
//  Sl_Lang.swift
//  KisanSecure
//
//  Created by Manraj Singh on 29/10/24.
//

import SwiftUI

struct Sl_Lang: View {
    @State private var selectedLanguage = "English"
    var body: some View {
        NavigationView {
            ZStack{
                Color.green.opacity(0.2).edgesIgnoringSafeArea(.all)
                VStack{
                    Text("Kisan Secure")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.green)
                        .padding(.top, 50)
                        .offset(x:-70)
                    Text("Aapka Apna")
                        .font(.headline)
                        .fontWeight(.bold)
                        .foregroundColor(.green)
                        .padding(.top, 10)
                        .offset(x:65,y:-40)
                    Spacer()
                        .frame(height: 150)
                    Text("Choose your language!")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                        .padding(.top, 50)
                    Picker("Select Language", selection: $selectedLanguage) {
                        Text("English").tag("English")
                        Text("Hindi").tag("Hindi")
                        Text("Punjabi").tag("Punjabi")
                        Text("Marathi").tag("Marathi")
                    }
                    .pickerStyle(MenuPickerStyle()) // Menu picker style
                    .padding(.top, 10)
                    .padding(.horizontal)
                    NavigationLink(destination: Login()) {
                        Text("Next")
                            .fontWeight(.bold)
                            .foregroundColor(.blue)
                            .padding()
                            .background(Color.white)
                            .cornerRadius(10)
                    }
                }
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}
#Preview {
    Sl_Lang()
}
