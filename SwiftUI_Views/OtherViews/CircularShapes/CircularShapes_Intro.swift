//
//  Circles_1_00.swift
//  100Views
//
//  Created by Mark Moeykens on 6/8/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct CircularShapes_Intro : View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Circular Shapes").font(.largeTitle)
            Text("Introduction").foregroundColor(.gray)
            Text("There are three circular shapes available in SwiftUI:")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.purple)
                .foregroundColor(Color.white)
                .layoutPriority(1)
            
            Text("Circle")
            
            Circle()
                .padding()
            
            Text("Capsule")
            
            Capsule()
                .padding()
            
            Text("Ellipse")
            
            Ellipse()
                .padding()
            
            Text("(Notice the default colors default to the primary color.)")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.purple)
                .foregroundColor(Color.white)
                .layoutPriority(1)
        }
        .font(.title)
    }
}

#if DEBUG
struct CircularShapes_Intro_Previews : PreviewProvider {
    static var previews: some View {
        CircularShapes_Intro()
    }
}
#endif
