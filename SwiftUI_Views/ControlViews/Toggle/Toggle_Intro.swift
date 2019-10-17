//
//  Toggle_Intro.swift
//  100Views
//
//  Created by Mark Moeykens on 6/28/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct Toggle_Intro : View {
    @State private var isToggleOn = true
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Toggle").font(.largeTitle)
            Text("Introduction").font(.title).foregroundColor(.gray)
            Text("The Toggle is a 'push-out view' that only pushes out to fill the width of its parent view.")
                .frame(maxWidth: .infinity, minHeight: 105)
                .padding().font(.title)
                .background(Color.blue).foregroundColor(Color.white)
                .layoutPriority(30)
            Toggle("Night Mode", isOn: $isToggleOn)
                .padding()
            
            Text("Combine images with text")
                .frame(maxWidth: .infinity).padding()
                .background(Color.blue).foregroundColor(Color.white)
                .font(.title)
            Toggle(isOn: $isToggleOn) {
                Text("Night Mode")
                Image(systemName: "moon")
            }.padding()
            Text("Or you can have nothing")
                .frame(maxWidth: .infinity).padding()
                .background(Color.blue).foregroundColor(Color.white)
                .font(.title)
            
            VStack {
                Text("Turn Alarm On?")
                    .foregroundColor(.white)
                Toggle("Turn this alarm on", isOn: $isToggleOn)
                    .labelsHidden() // Hides the label/title
            }
            .padding(25)
            .background(Color.blue)
            .cornerRadius(20)
        }
    }
}

#if DEBUG
struct Toggle_Intro_Previews : PreviewProvider {
    static var previews: some View {
        Toggle_Intro()
    }
}
#endif
