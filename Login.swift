//
//  Login.swift
//  KisanSecure
//
//  Created by Manraj Singh on 29/10/24.
//

import SwiftUI

struct Login: View {
    @AppStorage("isLoggedIn") private var isLoggedInKisan = false
    @AppStorage("isLoggedIn") private var isLoggedInOther = false
    @State private var username: String = ""
    @State private var password: String = ""
    @State private var userType: String = "Farmer"
    @State private var isLoginActive: Bool = false
    @State private var isRegisterActive: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack{
                Color.green.opacity(0.2).ignoresSafeArea()
                VStack(spacing: 20) {
                    Text("Login Page")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    TextField("Username", text: $username)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal)
                    
                    SecureField("Password", text: $password)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding(.horizontal)
                    
                    Picker("I am a:", selection: $userType) {
                        Text("Farmer").tag("Farmer")
                        Text("Other User").tag("Other")
                    }
                    .pickerStyle(SegmentedPickerStyle())
                    .padding(.horizontal)
                    
                    Button("Login") {
                        isLoginActive = true
                    }
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    
                    Button("Register") {
                        isRegisterActive = true
                    }
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(10)
                    
                    // Conditional Navigation Links for Login
                    NavigationLink(
                        destination: Farmer_Main(),
                        isActive: Binding(
                            get: { isLoginActive && userType  == "Farmer" },
                            set: { _ in isLoginActive = false; isLoggedInKisan = false}
                        ),
                        label: { EmptyView() }
                    )
                    
                    NavigationLink(
                        destination: Client_Main(),
                        isActive: Binding(
                            get: { isLoginActive && userType == "Other" },
                            set: { _ in isLoginActive = false; isLoggedInOther = false }
                        ),
                        label: { EmptyView() }
                    )
                    
                    // Conditional Navigation Links for Register
                    NavigationLink(
                        destination: FarmerRegistration(),
                        isActive: Binding(
                            get: { isRegisterActive && userType == "Farmer" },
                            set: { _ in isRegisterActive = false }
                        ),
                        label: { EmptyView() }
                        
                    )
                    
                    NavigationLink(
                        destination: ClientRegistration(),
                        isActive: Binding(
                            get: { isRegisterActive && userType == "Other" },
                            set: { _ in isRegisterActive = false }
                        ),
                        label: { EmptyView() }
                    )
                }
                .navigationTitle("Login")
            }
            .navigationBarBackButtonHidden(true)
        }
        .navigationBarBackButtonHidden(true)
    }
}
#Preview {
    Login()
}
