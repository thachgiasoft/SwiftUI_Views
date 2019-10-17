//
//  Mask_Offset.swift
//  100Views
//
//  Created by Mark Moeykens on 9/20/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct Mask_Positioning: View {
    var body: some View {
        VStack(spacing: 12) {
            Text("Mask").font(.largeTitle)
            Text("Positioning").foregroundColor(.gray)
            Text("Your mask will be positioned in the top right corner by default (unless using a shape). Here are some positioning strategies.")
                .frame(maxWidth: .infinity)
                .font(.title).padding()
                .background(Color.orange)
                .layoutPriority(1)
                .foregroundColor(.black)
            
            HStack {
                Spacer()
                Text("Default")
                Spacer()
                Text("Repositioned")
                Spacer()
            }
            
            HStack(spacing: 60) {
                Image("profile")
                    .mask(Image(systemName: "heart.fill"))
                Image("profile")
                    // Add an offset to the mask to move it down
                    .mask(Image(systemName: "heart.fill").offset(y: 15))
            }.font(.system(size: 100))
            
            HStack(spacing: 60) {
                Image("sunset")
                    .mask(Image(systemName: "heart.fill"))
                GeometryReader { gr in
                    Image("sunset")
                        // Use geometry reader's coordinate space
                        .mask(Image(systemName: "heart.fill")
                            .position(x: gr.size.width/2,
                                      y: gr.size.height/2))
                }.frame(width: 100, height: 100)
            }.font(.system(size: 100))
            
            Text("Default")
            Image("yosemite")
                .mask(Image(systemName: "heart.fill")
                    .font(.system(size: 75)))
            
            Text("Repositioned")
            Image("yosemite")
                // Use spacers
                .mask(
                    VStack {
                        Spacer()
                        HStack {
                            Spacer()
                            Image(systemName: "heart.fill")
                                .font(.system(size: 75))
                            Spacer()
                        }
                        Spacer()
                })
        }
        .font(.title)
    }
}

struct Mask_Positioning_Previews: PreviewProvider {
    static var previews: some View {
        Mask_Positioning()
    }
}
