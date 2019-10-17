//
//  HueRotation_Photos.swift
//  100Views
//
//  Created by Mark Moeykens on 9/2/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct HueRotation_Photos: View {
    var body: some View {
        VStack(spacing: 5) {
            Text("Hue Rotation").font(.largeTitle)
            Text("With Photos").font(.title).foregroundColor(.gray)
            Text("Applying hue rotation on a photo will rotate all colors.")
                .frame(maxWidth: .infinity)
                .font(.title).padding()
                .background(Color.red)
                .layoutPriority(1)
                .foregroundColor(.white)
            
            VStack(spacing: 5) {
                Image("rainbow").resizable()
                    .scaledToFit()
                    .frame(height: 150)
                    .overlay(Text("0°"))
                Image("rainbow").resizable()
                    .scaledToFit()
                    .frame(height: 150)
                    .hueRotation(Angle.degrees(90))
                    .overlay(Text("90°"))
                Image("rainbow").resizable()
                    .scaledToFit()
                    .frame(height: 150)
                    .hueRotation(Angle.degrees(180))
                    .overlay(Text("180°"))
                Image("rainbow").resizable()
                    .scaledToFit()
                    .frame(height: 150)
                    .hueRotation(Angle.degrees(270))
                    .overlay(Text("270°"))
            }
            .font(.title)
            .foregroundColor(.white)
            
            Text("Photo by Daniele Pelusi")
                .font(.caption)
        }.edgesIgnoringSafeArea(.bottom)
    }
}

struct HueRotation_Photos_Previews: PreviewProvider {
    static var previews: some View {
        HueRotation_Photos()
    }
}
