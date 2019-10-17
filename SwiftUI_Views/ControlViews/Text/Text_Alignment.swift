//
//  Text_1_02_Alignment.swift
//  100Views
//
//  Created by Mark Moeykens on 6/5/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct Text_Alignment : View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Text").font(.largeTitle)
            Text("Multiline Text Alignment").foregroundColor(.gray)
            Image("MultilineTextAlignment")
            Text("By default, text will be centered within the screen. But when it wraps to multiple lines, it will be leading aligned by default. Use multilineTextAlignment modifier to change this!")
                .padding()
                .layoutPriority(1)
                .foregroundColor(.white).background(Color.green)
            
            Text(".multilineTextAlignment(.center)")
                .frame(maxWidth: .infinity).padding()
                .foregroundColor(.white).background(Color.green)
            
            Text("Have I told you how awesome I think you are?")
                .multilineTextAlignment(.center) // Center align
                .padding(.horizontal)
            
            Text(".multilineTextAlignment(.trailing)")
                .frame(maxWidth: .infinity).padding()
                .foregroundColor(.white).background(Color.green)
                .allowsTightening(true) // Prevent truncation
            
            Text("You are SUPER awesome for improving your skills by using this book!")
                .multilineTextAlignment(.trailing) // Trailing align
                .padding(.horizontal)
        }.font(.title) // Apply this text style to all text views
    }
}

#if DEBUG
struct Text_Alignment_Previews : PreviewProvider {
    static var previews: some View {
        Text_Alignment()
    }
}
#endif
