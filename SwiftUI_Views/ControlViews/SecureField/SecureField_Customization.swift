//
//  SecureField_Customization.swift
//  100Views
//
//  Created by Mark Moeykens on 6/23/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct SecureField_Customization : View {
    @State private var userName = ""
    @State private var password = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Text("SecureField")
                .font(.largeTitle)
            Text("Customization")
                .font(.title)
                .foregroundColor(.gray)
            Text("Use a ZStack to put a RoundedRectangle behind a SecureField with a plain textfieldStyle.")
                .frame(maxWidth: .infinity)
                .padding().font(.title)
                .background(Color.purple)
                .foregroundColor(Color.white)
                .layoutPriority(2)
            
            ZStack{
                RoundedRectangle(cornerRadius: 8)
                    .foregroundColor(.purple)
                TextField("user name", text: $userName)
                    .foregroundColor(Color.white)
                    .padding(.horizontal)
            }
            .frame(height: 40)
            .padding(.horizontal)
            
            Text("Or overlay the SecureField on top of another view or shape.")
                .frame(maxWidth: .infinity)
                .padding().font(.title)
                .background(Color.purple)
                .foregroundColor(Color.white)
                .layoutPriority(1)
            
            RoundedRectangle(cornerRadius: 8)
                .foregroundColor(.purple)
                .overlay(
                    SecureField("password", text: $password)
                        .foregroundColor(Color.white)
                        .padding(.horizontal)
            )
                .frame(height: 40)
                .padding(.horizontal)
        }
    }
}

struct SecureField_Customization_Previews : PreviewProvider {
    static var previews: some View {
        SecureField_Customization()
    }
}
