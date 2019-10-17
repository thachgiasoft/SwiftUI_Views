//
//  GeometryReader_SafeAreaInsets.swift
//  100Views
//
//  Created by Mark Moeykens on 7/12/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct GeometryReader_SafeAreaInsets : View {
    var body: some View {
        VStack(spacing: 10) {
            Text("GeometryReader").font(.largeTitle)
            Text("SafeAreaInsets")
                .font(.title).foregroundColor(.gray)
            
            Text("GeometryReader can also tell you the safe area insets it has.")
                .frame(maxWidth: .infinity).padding().font(.title)
            
GeometryReader { geometry in
    VStack {
        Text("geometry.safeAreaInsets.leading: \(geometry.safeAreaInsets.leading)")
        Text("geometry.safeAreaInsets.trailing: \(geometry.safeAreaInsets.trailing)")
        Text("geometry.safeAreaInsets.top: \(geometry.safeAreaInsets.top)")
        Text("geometry.safeAreaInsets.bottom: \(geometry.safeAreaInsets.bottom)")
    }
}
.font(.title)
.background(Color.pink)
.foregroundColor(.white)
        }
    }
}

#if DEBUG
struct GeometryReader_SafeAreaInsets_Previews : PreviewProvider {
    static var previews: some View {
        GeometryReader_SafeAreaInsets()
    }
}
#endif
