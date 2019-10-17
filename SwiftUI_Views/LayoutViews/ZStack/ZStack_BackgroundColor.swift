//
//  ZStack_BackgroundColor.swift
//  100Views
//
//  Created by Mark Moeykens on 9/26/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct ZStack_BackgroundColor: View {
    var body: some View {
        Color.purple
            .edgesIgnoringSafeArea(.vertical)
            .overlay(
                VStack(spacing: 20) {
                    Text("Overlay").font(.largeTitle)
                    Text("Example").font(.title).foregroundColor(.white)
                Spacer()
            })
            
    }
}

struct ZStack_BackgroundColor_Previews: PreviewProvider {
    static var previews: some View {
        ZStack_BackgroundColor()
    }
}
