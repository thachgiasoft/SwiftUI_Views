//
//  Color_1_00_Background.swift
//  100Views
//
//  Created by Mark Moeykens on 6/12/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct Color_1_00_Background : View {
    var body: some View {
ZStack {
    Color("ColorBackground")
        .edgesIgnoringSafeArea(.vertical)

    // Your main view content here
    VStack(spacing: 20) {
        Text("Color")
            .font(.largeTitle)
        Text("Using As Background")
            .font(.title)
            .foregroundColor(.gray)
        Divider()
        Text("With a ZStack, you can set a Color view as the background color.")
            .frame(maxWidth: .infinity)
            .padding()
            .background(Color.orange)
            .foregroundColor(Color.black)
            .font(.title)
        
        Text("(Background in Dark Mode)")
            .padding(.top, 150)
    }
}
    }
}

#if DEBUG
struct Color_1_00_Background_Previews : PreviewProvider {
    static var previews: some View {
        Color_1_00_Background()
    }
}
#endif
