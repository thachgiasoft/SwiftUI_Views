//
//  ZStack_1_01.swift
//  100Views
//
//  Created by Mark Moeykens on 6/15/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct ZStack_1_01 : View {
    var body: some View {
        ZStack {
            Color.gray
            
            VStack(spacing: 20) {
                Text("ZStack")
                    .font(.largeTitle)
                
                Text("Edges Ignoring Safe Area")
                    .foregroundColor(.white)
                
                Text("Ignoring the Safe Areas will extend a view to fill the whole scene.")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.green)
                    
            }
            .font(.title)
        }
        .edgesIgnoringSafeArea(.all) // Ignore the safe areas
    }
}

#if DEBUG
struct ZStack_1_01_Previews : PreviewProvider {
    static var previews: some View {
        Group {
            ZStack_1_01()
        }
    }
}
#endif
