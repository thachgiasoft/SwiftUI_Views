//
//  ColorScheme_Intro.swift
//  100Views
//
//  Created by Mark Moeykens on 8/25/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct ColorScheme_Intro: View {
    var body: some View {
        VStack(spacing: 0) {
            Text("Color Scheme").font(.largeTitle)
            Text("Introduction").font(.title).foregroundColor(.gray)
            Text("You can force a view to be presented in light or dark color scheme no matter if the user switches to light or dark mode.")
                .frame(maxWidth: .infinity)
                .font(.title).padding()
                .background(Color.purple)
                .layoutPriority(2)
                .foregroundColor(.white)
                .padding(.bottom)
            
            Text("This Text view will change depending on the color scheme.")
                .frame(maxWidth: .infinity)
                .font(.title).padding()
                .background(Color.pink)
                .layoutPriority(1)
            
            Text("This Text view is forced to be presented in the DARK color scheme.")
                .frame(maxWidth: .infinity)
                .font(.title).padding()
                .background(Color.pink)
                .layoutPriority(1)
                .colorScheme(.dark)
            
            Text("This Text view is forced to be presented in the LIGHT color scheme.")
                .frame(maxWidth: .infinity)
                .font(.title).padding()
                .background(Color.pink)
                .layoutPriority(1)
                .colorScheme(.light)
        }
    }
}

struct ColorScheme_Intro_Previews: PreviewProvider {
    static var previews: some View {
        ColorScheme_Intro()
    }
}
