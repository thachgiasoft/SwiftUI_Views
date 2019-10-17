//
//  Image_1_01_Resizable.swift
//  100Views
//
//  Created by Mark Moeykens on 6/6/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct Image_1_01_Resizable : View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Image")
                .font(.largeTitle)
            
            Text("Resizing")
                .font(.title)
                .foregroundColor(.gray)
            
            Text("With the resizable modifier, you can then adjust the frame to resize.")
                .frame(maxWidth: .infinity).padding()
                .background(Color.red)
                .font(.title).layoutPriority(1)
            
            Image("SwiftUI")
                .resizable()
                .frame(width: 100.0, height: 100.0)
            
            Text("No Scaling")
            Image("SwiftUI")
                .resizable()
                .frame(width: 100.0, height: 150.0)
                .background(Color.primary)
            
            Text("With Scaling")
            Image("SwiftUI")
                .resizable().scaledToFit()
                .frame(width: 400.0, height: 200.0)
                .background(Color.primary)
        }
    }
}

#if DEBUG
struct Image_1_01_Resizable_Previews : PreviewProvider {
    static var previews: some View {
        Image_1_01_Resizable()
    }
}
#endif
