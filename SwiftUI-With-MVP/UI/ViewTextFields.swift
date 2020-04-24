//
//  ViewTextFields.swift
//  SwiftUI-With-MVP
//
//  Created by Yannes Meneguelli on 20/04/20.
//  Copyright © 2020 Yannes Meneguelli. All rights reserved.
//

import SwiftUI

struct ViewTextFields: View {
    
    @Binding var username: String
    @Binding var password: String
    
    var body: some View {
        VStack {
            TextField("Username", text: $username)
                .padding()
                .frame(width: 320, height: 45)
                .background(Color(#colorLiteral(red: 0.8799135089, green: 0.8800613284, blue: 0.8798940182, alpha: 1)))
                .cornerRadius(10)
            TextField("password", text: $password)
                .padding()
                .frame(width: 320, height: 45)
                .background(Color(#colorLiteral(red: 0.8799135089, green: 0.8800613284, blue: 0.8798940182, alpha: 1)))
                .cornerRadius(10)
        }
    }
}

struct ViewTextFields_Previews: PreviewProvider {
    static var previews: some View {
        ViewTextFields(username: .constant(""), password: .constant(""))
    }
}
