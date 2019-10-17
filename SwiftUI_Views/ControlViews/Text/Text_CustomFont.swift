//
//  Text_CustomFont.swift
//  100Views
//
//  Created by Mark Moeykens on 8/22/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct Text_CustomFont: View {
    var body: some View {
        VStack(spacing: 20) {
            Group {
                Text("Text")
                    .font(.largeTitle)
                
                Text("Custom Fonts")
                    .font(.title)
                    .foregroundColor(.gray)
                
                Text("Use a font that already exists on the system. If the font name doesn't exist, it goes back to the default font.")
                    .padding().layoutPriority(2)
                    .frame(maxWidth: .infinity)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .font(.title)
            }
            Text("This font doesn't exist")
                .font(Font.custom("No Such Font", size: 26))
            
            Text("Existing fonts:")
                .padding().layoutPriority(1)
                .frame(maxWidth: .infinity)
                .background(Color.green)
                .foregroundColor(.white)
                .font(.title)
            
            Text("Avenir Next")
                .font(Font.custom("Avenir Next", size: 26))
            
            Text("Gill Sans")
                .font(Font.custom("Gill Sans", size: 26))
            
            Text("Helvetica Neue")
                .font(Font.custom("Helvetica Neue", size: 26))
            
            Text("Adust the weight:")
                .padding().layoutPriority(1)
                .frame(maxWidth: .infinity)
                .background(Color.green)
                .foregroundColor(.white)
                .font(.title)
            
            Text("Avenir Next Regular")
                .font(Font.custom("Avenir Next Regular", size: 26))
            
            Text("Or change with the weight modifier:")
                .foregroundColor(.red)
            
            Text("Avenir Next Regular Weight")
                .font(Font.custom("Avenir Next", size: 26).weight(.regular))
        }.edgesIgnoringSafeArea(.bottom)
    }
}

struct Text_CustomFont_Previews: PreviewProvider {
    static var previews: some View {
        Text_CustomFont()
    }
}
