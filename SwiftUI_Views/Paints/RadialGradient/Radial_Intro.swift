//
//  Radial_Intro.swift
//  100Views
//
//  Created by Mark Moeykens on 7/13/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct Radial_Intro : View {
    var body: some View {
        let gradient = Gradient(colors: [.yellow, .orange, .white])
        let radialGradient = RadialGradient(gradient: gradient, center: .bottom, startRadius: 100, endRadius: 700)
        let smallRadial = RadialGradient(gradient: gradient, center: .center, startRadius: 1, endRadius: 150)
        
        return ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(radialGradient)
                .edgesIgnoringSafeArea(.vertical)
            VStack(spacing: 20) {
                Text("RadialGradient").font(.largeTitle)
                Text("Introduction").font(.title).foregroundColor(.gray)
                Text("Radius measures the distance from the center of a circle on outward. You set a startRadius to determine how far the first color should expand outward. The endRadius defines the end of the gradient spread. If the endRadius is greater than the startRadius, the last color defined in the Gradient object will fill everything beyond that endRadius.")
                    .frame(maxWidth: .infinity).padding()
                Group {
                    Circle()
                        .fill(smallRadial)
                    RoundedRectangle(cornerRadius: 20)
                        .fill(smallRadial)
                        .padding(30)
                    Circle()
                        .strokeBorder(smallRadial, lineWidth: 40)
                        .shadow(color: .white, radius: 10)
                }.shadow(color: .white, radius: 10)
            }
        }
    }
}
#if DEBUG
struct Radial_Intro_Previews : PreviewProvider {
    static var previews: some View {
        Radial_Intro()
    }
}
#endif
