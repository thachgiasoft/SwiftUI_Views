//
//  Image_1_00.swift
//  100Views
//
//  Created by Mark Moeykens on 6/6/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct Image_1_00 : View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Image")
                .font(.largeTitle)
            
            Text("From Asset Catalog")
                .font(.title)
                .foregroundColor(.gray)
            
            Text("By default, your images retain their original size.")
                .frame(maxWidth: .infinity).padding()
                .background(Color.red).foregroundColor(Color.white)
                .font(.title).layoutPriority(1)
            
            Image("SwiftUI.red.small")
            
            Text("You can change the size by adding the resizable modifier.")
                .frame(maxWidth: .infinity).padding()
                .background(Color.red).foregroundColor(Color.white)
                .font(.title).layoutPriority(1)
            
            Image("SwiftUI.red.small")
                .resizable()
            
            Text("By default, resizable will allow the image to expand to fill all available space.")
                .frame(maxWidth: .infinity).padding()
                .background(Color.red).foregroundColor(Color.white)
                .font(.title).layoutPriority(1)
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

#if DEBUG
struct Image_1_00_Previews : PreviewProvider {
    static var previews: some View {
        Image_1_00()
    }
}
#endif
