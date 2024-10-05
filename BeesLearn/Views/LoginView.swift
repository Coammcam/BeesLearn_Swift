//
//  LoginView.swift
//  BeesLearn
//
//  Created by Nguyễn Hưng on 08/10/2024.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        Image("logo")
            .resizable()
            .frame(width: 261, height: 261)
            .padding(.bottom, 40)
        
        VStack{
            CustomTextField(title: "Email", placeholder: "Enter your email", text: $email)
            CustomTextField(title: "Password", placeholder: "Enter your password", text: $password)
            
            HStack {
                Text("Fotgot password?")
                    .font(Font.custom("Nunito-Bold", size: 12))
            }
            .frame(maxWidth: .infinity, alignment: .trailing)
            .padding(.top, -20)
            .padding(.bottom, 50)
            
            CustomButton(text: "Login")
            
            HStack{
                Text("Don't you have an account? ")
                    .font(Font.custom("Nunito-Bold", size: 12))
                
                Text("Sign up")
                    .font(Font.custom("Nunito-Bold", size: 12))
                    .foregroundStyle(Color(hex: "#F8A724"))
            }
            .padding(.top, 10)
        }
        .padding(.horizontal, 50)
        
    }
}

#Preview {
    LoginView()
}
