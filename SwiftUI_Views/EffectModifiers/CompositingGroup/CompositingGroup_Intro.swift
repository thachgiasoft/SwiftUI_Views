//
//  CompositingGroup_Intro.swift
//  100Views
//
//  Created by Mark Moeykens on 8/25/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct CompositingGroup_Intro: View {
    @State var name = ""
    @State var address = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Compositing Group").font(.largeTitle)
            Text("Introduction").font(.title).foregroundColor(.gray)
            Text("Render the effects for a group of views before applying more effects to it.")
                .frame(maxWidth: .infinity)
                .font(.title).padding()
                .background(Color.red)
                .layoutPriority(1)
                .foregroundColor(.white)
            
            VStack(spacing: 30) {
                TextField("Name", text: $name)
                    .padding().background(Color.white).cornerRadius(15)
                    .shadow(radius: 5)
                
                TextField("Address", text: $address)
                    .padding().background(Color.white).cornerRadius(15)
                    .shadow(radius: 5)
                
                Button(action: {}) {
                    HStack {
                        Text("Next")
                        Image(systemName: "chevron.right")
                    }.padding()
                }
                .padding(.horizontal).foregroundColor(.white)
                .background(Color.blue).cornerRadius(15)
                .shadow(radius: 5)
            }
                .compositingGroup() // Apply effect modifiers
                .padding(20)
                .background(Color.purple.opacity(0.9))
                .cornerRadius(20)
                .shadow(radius: 5)
                .padding(20)
            
            Text("If you remove the .compositingGroup() modifier, you will notice you can't tap inside the TextFields.")
                .frame(maxWidth: .infinity)
                .font(.title).padding()
                .background(Color.red)
                .layoutPriority(1)
                .foregroundColor(.white)
        }
    }
}

struct CompositingGroup_Intro_Previews: PreviewProvider {
    static var previews: some View {
        CompositingGroup_Intro()
    }
}
