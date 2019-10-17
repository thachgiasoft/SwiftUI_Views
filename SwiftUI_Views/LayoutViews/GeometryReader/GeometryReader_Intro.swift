//
//  GeometryReader_Intro.swift
//  100Views
//
//  Created by Mark Moeykens on 7/12/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct GeometryReader_Intro : View {
    var body: some View {
        VStack(spacing: 20) {
            Text("GeometryReader")
                .font(.largeTitle)
            
            Text("Introduction")
                .font(.title)
                .foregroundColor(.gray)
            
            Text("GeometryReader is a container view that pushes out to fill up all available space. You use it to help with positioning items within it.")
                .font(.title)
                .padding()
                .layoutPriority(1)
            
            GeometryReader {_ in
                Text("Views center automatically inside the GeometryReader")
                    .font(.title)
            }
            .foregroundColor(.white)
            .background(Color.pink)
            
        }
    }
}

#if DEBUG
struct GeometryReader_Intro_Previews : PreviewProvider {
    static var previews: some View {
        GeometryReader_Intro()
    }
}
#endif
