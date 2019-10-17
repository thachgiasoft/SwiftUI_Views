//
//  TextField_1_00.swift
//  100Views
//
//  Created by Mark Moeykens on 6/13/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct TextField_Intro : View {
    @State private var textFieldData = ""
    
    var body: some View {
        VStack(spacing: 20) {
            Group {
                Text("TextField").font(.largeTitle)
                Text("Introduction").font(.title).foregroundColor(.gray)
                Text("It is required to bind text fields to a variable when using them so you can get/set the text.").frame(maxWidth: .infinity).padding()
                    .background(Color.orange)
                    .layoutPriority(1).font(.title)
            }
            Text("TextFieldStyle")
                .font(.title)
                .foregroundColor(.gray)
            
            Text("By default, TextFields have a plain TextFieldStyle that has no visual content to be seen.")
                .frame(maxWidth: .infinity).padding()
                .background(Color.orange)
                .layoutPriority(1).font(.title)
            Image(systemName: "arrow.down.circle")
                .font(.title)
            TextField("", text: $textFieldData)
            Image(systemName: "arrow.up.circle")
                .font(.title)
            Text("Use .textFieldStyle(RoundedBorderTextFieldStyle()) to show a border.")
                .frame(maxWidth: .infinity).padding()
                .background(Color.orange)
                .font(.title).layoutPriority(1)
            TextField("", text: $textFieldData)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
        }
    }
}


#if DEBUG
struct TextField_Intro_Previews : PreviewProvider {
    static var previews: some View {
        TextField_Intro()
    }
}
#endif
