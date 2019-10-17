//
//  GeometryReader_GettingSize.swift
//  100Views
//
//  Created by Mark Moeykens on 7/12/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct GeometryReader_GettingSize : View {
    var body: some View {
VStack(spacing: 10) {
    Text("GeometryReader")
        .font(.largeTitle)
    
    Text("Getting Size")
        .foregroundColor(.gray)
    
    Text("Use the geometry reader when you need to get the height and/or width of a space.")
        .padding()
    
    GeometryReader { geometry in
        VStack(spacing: 10) {
            Text("Width: \(geometry.size.width)")
            Text("Height: \(geometry.size.height)")
        }
        .foregroundColor(.white)
    }
    .background(Color.pink)
    
    GeometryReader { geometry in
        VStack(spacing: 10) {
            Text("Width: \(geometry.size.width)")
            Text("Height: \(geometry.size.height)")
        }
        .foregroundColor(.white)
    }
    .background(Color.pink)
    .padding(30)
}
.font(.title)
    }
}

#if DEBUG
struct GeometryReader_GettingSize_Previews : PreviewProvider {
    static var previews: some View {
        GeometryReader_GettingSize()
    }
}
#endif
