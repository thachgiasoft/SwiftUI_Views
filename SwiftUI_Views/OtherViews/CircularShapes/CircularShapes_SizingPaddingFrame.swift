//
//  CircularShapes_Size.swift
//  100Views
//
//  Created by Mark Moeykens on 7/2/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct CircularShapes_SizingPaddingFrame : View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Circular Shapes").font(.largeTitle)
            Text("Sizing").font(.title).foregroundColor(.gray)
            Text("Shapes are push-out views. Use modifiers, such as padding or frame, to size them as you see fit.")
                .frame(maxWidth: .infinity).padding()
                .background(Color.purple).foregroundColor(Color.white)
                .layoutPriority(1)
            
            Text("Using padding")
            ZStack {
                Circle()
                    .fill(Color.red)
                    .padding()
                Circle()
                    .fill(Color.white)
                    .padding(40)
                Circle()
                    .fill(Color.red)
                    .padding(60)
                Circle()
                    .fill(Color.white)
                    .padding(80)
            }.frame(width: 150, height: 150)
            Text("Using frames")
            ZStack(alignment: .bottom) {
                Circle()
                    .fill(Color.secondary)
                    .frame(height: 250)
                Circle()
                    .fill(Color.secondary)
                    .frame(height: 200)
                Circle()
                    .fill(Color.secondary)
                    .frame(height: 150)
                Circle()
                    .fill(Color.secondary)
                    .frame(height: 100)
            }
        }.font(.title)
    }
}

#if DEBUG
struct CircularShapes_SizingPaddingFrame_Previews : PreviewProvider {
    static var previews: some View {
        CircularShapes_SizingPaddingFrame()
    }
}
#endif
