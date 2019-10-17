//
//  VStack_1_00.swift
//  100Views
//
//  Created by Mark Moeykens on 6/6/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct VStack_1_00 : View {
    var body: some View {
        
VStack(spacing: 20) {
    Text("VStack")
        .font(.largeTitle)
    Text("Introduction")
        .font(.title)
        .foregroundColor(.gray)
    Text("VStacks are views that contain other views")
        .frame(maxWidth: .infinity, minHeight: 70)
        .padding().font(.title)
        .background(Color.blue)
        .foregroundColor(.white)
    Text("The containing views are stacked vertically")
        .font(.title)
    
    VStack {
        Text("VStack inside another VStack")
            .layoutPriority(1) // Give spacing priority to this view first (prevents text wrapping)
        Divider()
        Text("This can be handy. Why?")
        Divider()
        Text("More than 10 views creates an error.")
    }
    .font(.title) // Apply this font to all text within parent
    .layoutPriority(1) // 2nd spacing priority (prevents text wrapping)
    .padding()
    .foregroundColor(Color.white)
    .background(
        // Use a blue rectangle as the background
        RoundedRectangle(cornerRadius: 10)
            .foregroundColor(.blue))
    .padding()
}
    }
}

#if DEBUG
struct VStack_1_00_Previews : PreviewProvider {
    static var previews: some View {
        VStack_1_00()
    }
}
#endif
