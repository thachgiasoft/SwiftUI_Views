//
//  GeometryReader_GettingCoordinates.swift
//  100Views
//
//  Created by Mark Moeykens on 7/12/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct GeometryReader_GettingCoordinates : View {
    var body: some View {
VStack(spacing: 10) {
    Text("GeometryReader").font(.largeTitle)
    Text("Getting Coordinates").foregroundColor(.gray)
    Text("Getting the coordinates (x, y) of a geometry view is little different. Take a look at this example:")
        .layoutPriority(1)
    
    GeometryReader { geometry in
        VStack(spacing: 10) {
            Text("X: \(geometry.frame(in: CoordinateSpace.local).origin.x)")
            Text("Y: \(geometry.frame(in: CoordinateSpace.local).origin.y)")
        }
        .foregroundColor(.white)
    }
    .background(Color.pink)
    
    Text("The local coordinate space will always give you zeros.")
    Text("You need to look globally to get the coordinates inside the current view:")
    GeometryReader { geometry in
        VStack(spacing: 10) {
            Text("X: \(geometry.frame(in: .global).origin.x)")
            Text("Y: \(geometry.frame(in: .global).origin.y)")
        }
        .foregroundColor(.white)
    }
    .background(Color.pink)
    .frame(height: 200)
}
.font(.title)
.padding(.horizontal)
    }
}

#if DEBUG
struct GeometryReader_GettingCoordinates_Previews : PreviewProvider {
    static var previews: some View {
        GeometryReader_GettingCoordinates()
    }
}
#endif
