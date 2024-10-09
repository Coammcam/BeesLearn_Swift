//
//  SignUpView.swift
//  BeesLearn
//
//  Created by Nguyễn Hưng on 09/10/2024.
//

import SwiftUI

struct SignUpView: View {
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var confirmPassword: String = ""
    
    var body: some View {
        Image("logo")
            .resizable()
            .frame(width: 261, height: 261)
            .padding(.bottom, 40)
        
        VStack{
            CustomTextField(title: "Name", placeholder: "Enter your name", text: $name)
            CustomTextField(title: "Email", placeholder: "Enter your email", text: $email)
            CustomTextField(title: "Password", placeholder: "Enter your password", text: $password)
            CustomTextField(title: "Confirm password", placeholder: "Enter confirm password", text: $confirmPassword)
            
            CustomButton(text: "Login")
                .padding(.top, 20)
            
        }
        .padding(.horizontal, 50)
        
        HStack{
            Text("You have an account? ")
                .font(Font.custom("Nunito-Bold", size: 12))
            
            Text("Login now")
                .font(Font.custom("Nunito-Bold", size: 12))
                .foregroundStyle(Color(hex: "#F8A724"))
        }
        .padding(.top, 10)
        
    }
}

#Preview {
    SignUpView()
}
