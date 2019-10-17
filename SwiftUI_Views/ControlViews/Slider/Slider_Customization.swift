//
//  Slider_Customization.swift
//  100Views
//
//  Created by Mark Moeykens on 6/24/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct Slider_Customization : View {
    @State private var sliderValue = 0.5
    
    var body: some View {
        VStack(spacing: 25) {
            Text("Slider").font(.largeTitle)
            Text("Customization").font(.title).foregroundColor(.gray)
            Text("At the time of this writing, there isn't a way to color the thumb. But we can change the background color and apply some other modifiers.")
                .frame(maxWidth: .infinity).padding()
                .background(Color.orange).foregroundColor(Color.black)
                .font(.title).layoutPriority(3)
            
            Slider(value: $sliderValue)
                .padding(.horizontal, 10)
                .background(Color.orange)
                .cornerRadius(.infinity) // Rounded ends
                .shadow(color: .gray, radius: 2)
                .padding(.horizontal)
            
            Text("Use the accentColor modifier to change the color of the track.")
                .frame(maxWidth: .infinity).padding()
                .background(Color.orange).foregroundColor(Color.black)
                .font(.title).layoutPriority(2)
            
            Slider(value: $sliderValue)
                .padding(.horizontal)
                .accentColor(.orange)
            
            Text("Using shapes and outlines.")
                .frame(maxWidth: .infinity).padding()
                .background(Color.orange).foregroundColor(Color.black)
                .font(.title).layoutPriority(1)
            
            Slider(value: $sliderValue)
                .padding(10)
                .background(Capsule().stroke(Color.orange, lineWidth: 2))
                .padding(.horizontal)
            
            Slider(value: $sliderValue)
                .padding(10)
                .background(Capsule().fill(Color.orange))
                .accentColor(.black)
                .padding(.horizontal)
        }.edgesIgnoringSafeArea(.bottom)
    }
}
#if DEBUG
struct Slider_Customization_Previews : PreviewProvider {
    static var previews: some View {
        Slider_Customization()
    }
}
#endif
