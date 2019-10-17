//
//  Image_1_02_ClipShape.swift
//  100Views
//
//  Created by Mark Moeykens on 6/6/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct Image_ClipShape : View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Image")
                .font(.largeTitle)
            
            Text("Clipping (Masking)")
                .font(.title)
                .foregroundColor(.gray)
            
            Text("Use the clipShape modifier to pass in a shape to mask your image.")
                .frame(maxWidth: .infinity).padding()
                .background(Color.red).foregroundColor(Color.white)
                .font(.title).layoutPriority(1)
            
            Text("Circle")
            Image("valley")
                .clipShape(Circle())
            
            Text("Rounded Rectangle")
            Image("valley")
                .clipShape(RoundedRectangle(cornerRadius: 10))
                .shadow(radius: 10, x: 1, y: 1)
            
            Text("Circle with Offset")
            Image("valley")
                .clipShape(Capsule().offset(x: -80, y: 0))
        }
    }
}

#if DEBUG
struct Image_ClipShape_Previews : PreviewProvider {
    static var previews: some View {
        Image_ClipShape()
    }
}
#endif
