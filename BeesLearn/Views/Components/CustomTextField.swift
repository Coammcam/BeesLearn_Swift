//
//  CustomTextField.swift
//  BeesLearn
//
//  Created by Nguyễn Hưng on 08/10/2024.
//

import SwiftUI

struct CustomTextField: View {
    var title: String
    var placeholder: String
    @Binding var text: String
    
    var body: some View {
        HStack{
            Text(title)
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(Font.custom("Nunito-Bold", size: 14))
                .padding(.bottom, -7)
        }
        
        VStack {
            TextField(placeholder, text: $text)
                .font(Font.custom("Nunito-Bold", size: 14))
            
            Rectangle()
                .frame(height: 1)
                .foregroundStyle(Color.black)
        }
        .padding(.bottom, 20)
       
    }
}

#Preview {
    @State var text = ""
    return CustomTextField(title: "Email", placeholder: "Enter your email", text: $text)
    
}
