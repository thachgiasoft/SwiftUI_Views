//
//  GeometryReader_Positioning.swift
//  100Views
//
//  Created by Mark Moeykens on 9/1/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct GeometryReader_Positioning: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("GeometryReader").font(.largeTitle)
            Text("Positioning").font(.title).foregroundColor(.gray)
            Text("Use the geometry reader's variable to help position child views at different locations within the geometry's view instead of it being in the center.")
                .font(.title)
                .layoutPriority(1)
                .padding()
            
            GeometryReader { geometry in
                Text("Upper Left")
                    .font(.title)
                    .position(x: geometry.size.width/5,
                              y: geometry.size.height/10)
                
                Text("Lower Right")
                    .font(.title)
                    .position(x: geometry.size.width - 90,
                              y: geometry.size.height - 40)
            }
            .background(Color.pink)
            .foregroundColor(.white)
            
            Text("Note: The position modifier uses the view's center point when setting the X and Y parameters.")
                .font(.title)
        }
    }
}

struct GeometryReader_Positioning_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader_Positioning()
    }
}
