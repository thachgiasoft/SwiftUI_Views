//
//  Text_FontDesign.swift
//  100Views
//
//  Created by Mark Moeykens on 6/28/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct Text_FontDesign : View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Text")
                .font(.largeTitle)
            
            Text("Font Design")
                .font(.title)
                .foregroundColor(.gray)
            
            Text("There are 4 font designs now in iOS. Use Font.system to set the font design you want.")
                .padding().font(.title)
                .foregroundColor(.white)
                .background(Color.green)
                .frame(maxWidth: .infinity)
                .layoutPriority(2)
            
            Text("Default font design")
                .font(Font.system(size: 36, design: Font.Design.default))
            
            // You can remove the "Font.Design" of the enum
            Text("Here is monospaced")
                .font(Font.system(size: 36, design: .monospaced))
            
            Text("And there is rounded")
                .font(Font.system(size: 36, design: .rounded))
            
            Text("Finally, we have serif!")
                .font(Font.system(size: 36, design: .serif))
            
            Text("A \"serif\" is a little piece that comes off the letter.")
                .frame(maxWidth: .infinity)
                .padding()
                .font(.title)
                .foregroundColor(.white)
                .background(Color.green)
                .layoutPriority(1)
            
            Image("Serif")
        }
    }
}

#if DEBUG
struct Text_FontDesign_Previews : PreviewProvider {
    static var previews: some View {
        Text_FontDesign()
    }
}
#endif
