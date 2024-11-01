//
//  ClientRegistration.swift
//  KisanSecure
//
//  Created by Manraj Singh on 29/10/24.
//

import SwiftUI

struct ClientRegistration: View {
    @State private var name = ""
    @State private var email = ""
    @State private var password = ""
    @State private var address = ""
    @State private var phoneNumber = ""
    var body: some View {
        ScrollView{
            VStack(spacing: 20) {
                // Logo
                Text("Kisan Secure")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
                    .padding(.top, 50)
                    .offset(y:25)
                
                Spacer()
                
                // Name Field
                TextField("Name", text: $name)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 2)
                    .padding(.horizontal, 30)
                
                // Email Field
                TextField("Email", text: $email)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 2)
                    .padding(.horizontal, 30)
                
                // Password Field
                SecureField("Password", text: $password)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 2)
                    .padding(.horizontal, 30)
                
                TextField("Address", text: $address)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 2)
                    .padding(.horizontal, 30)
                
                TextField("Phone", text: $phoneNumber)
                    .padding()
                    .keyboardType(.numberPad)
                    .background(Color.white)
                    .cornerRadius(10)
                    .shadow(radius: 2)
                    .padding(.horizontal, 30)
                
                // Sign Up Button
                NavigationLink(destination: Sl_Lang()) {
                    Text("Sign Up")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
                .padding(.horizontal, 30)
                .padding(.top, 10)
                
                Spacer()
            }
            .padding(.bottom,20)
        }
        .background(Color.green.opacity(0.1))
        .edgesIgnoringSafeArea(.all)
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    ClientRegistration()
}
