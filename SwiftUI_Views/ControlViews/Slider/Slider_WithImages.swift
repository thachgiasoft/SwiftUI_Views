//
//  Slider_WithImages.swift
//  100Views
//
//  Created by Mark Moeykens on 7/6/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct Slider_WithImages : View {
    @State private var sliderValue = 0.5
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Slider").font(.largeTitle)
            Text("With Images").font(.title).foregroundColor(.gray)
            Text("Combine the slider with images in an HStack, VStack or both!")
                .frame(maxWidth: .infinity).padding()
                .background(Color.orange).foregroundColor(Color.black)
                .font(.title).layoutPriority(1)
            HStack {
                Image(systemName: "tortoise")
                Slider(value: $sliderValue)
                Image(systemName: "hare")
            }.foregroundColor(.green).padding()
            
            HStack {
                Image(systemName: "speaker.fill")
                Slider(value: $sliderValue)
                Image(systemName: "speaker.3.fill")
            }
            .foregroundColor(.accentColor)
            .padding()
            
            VStack {
                Slider(value: $sliderValue)
                    .accentColor(.orange)
                HStack {
                    Image(systemName: "circle")
                    Spacer()
                    Image(systemName: "circle.righthalf.fill")
                    Spacer()
                    Image(systemName: "circle.fill")
                }
                .foregroundColor(.orange)
                .padding(.top, 8)
            }.padding()
        }.font(.title)
    }
}

#if DEBUG
struct Slider_WithImages_Previews : PreviewProvider {
    static var previews: some View {
        Slider_WithImages()
    }
}
#endif
