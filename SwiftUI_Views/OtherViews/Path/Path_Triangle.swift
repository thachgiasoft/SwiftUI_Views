//
//  Path_Triangle.swift
//  100Views
//
//  Created by Mark Moeykens on 7/12/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct Path_Triangle : View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Path").font(.largeTitle)
            Text("Triangles").foregroundColor(.gray)
            Text("You can already create circular and rectangular shapes, so I'm not going to cover those. Let's make triangles instead.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.purple)
                .foregroundColor(Color.white)
                .layoutPriority(1)
            // Outline Triangle
            GeometryReader { gr in
                Path { path in
                    let middle = gr.frame(in: .local).midX
                    let width: CGFloat = 200
                    // Start in the center
                    path.move(to: CGPoint(x: middle, y: 10))
                    path.addLine(to: CGPoint(x: middle + (width / 2), y: 170))
                    path.addLine(to: CGPoint(x: middle-(width / 2), y: 170))
                    path.addLine(to: CGPoint(x: middle, y: 10))
                }
                .strokedPath(StrokeStyle(lineWidth: 4))
                .foregroundColor(Color.purple)
            }
            
            // Solid Triangle
            GeometryReader { gr in
                Path { path in
                    let middle = gr.frame(in: .local).midX
                    let width: CGFloat = 200
                    // Start in the center
                    path.move(to: CGPoint(x: middle, y: 10))
                    path.addLine(to: CGPoint(x: middle + (width / 2), y: 170))
                    path.addLine(to: CGPoint(x: middle-(width / 2), y: 170))
                    path.addLine(to: CGPoint(x: middle, y: 10))
                }
                .fill(Color.purple)
                .rotationEffect(Angle.degrees(90))
            }
        }.font(.title)
    }
}

#if DEBUG
struct Path_Triangle_Previews : PreviewProvider {
    static var previews: some View {
        Path_Triangle()
    }
}
#endif
