//
//  ZStack Overlapping.swift
//  100Views
//
//  Created by Mark Moeykens on 8/11/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct ZStack_Overlapping: View {
    private var transparentWhite = Color(hue: 0, saturation: 0, brightness: 1, opacity: 0.5)
    var body: some View {
        VStack {
            Text("ZStack")
                .font(.largeTitle)
            
            Text("Layering & Aligning")
                .font(.title).foregroundColor(.gray)
            
            Text("ZStacks are great for layering views. For example, putting text on top of an image. You can align all the subviews within the ZStack.")
                .frame(maxWidth: .infinity, minHeight: 171) // Force the height. Can increase but not go below 171.
                .padding().foregroundColor(.white)
                .background(Color.green).font(.title)
            
            ZStack(alignment: .bottomTrailing) {
                Image("yosemite_large")
                
                Rectangle()
                    .foregroundColor(transparentWhite)
                    .frame(width: 390, height: 50)
                
                Text("Yosemite National Park")
                    .font(.title)
                    .padding(8) // Override the default padding with 8 points
            }
            Text("View Hierarchy")
                .font(.title).foregroundColor(.gray)
            
            Image("yosemite_layers")
        }
        
    }
}

#if DEBUG
struct ZStack_Overlapping_Previews: PreviewProvider {
    static var previews: some View {
        ZStack_Overlapping()
    }
}
#endif
