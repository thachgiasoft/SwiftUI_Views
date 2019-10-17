//
//  Frame_Min_Max.swift
//  100Views
//
//  Created by Mark Moeykens on 8/25/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct Frame_Min_Max: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Frame")
                .font(.largeTitle)
            
            Text("Min & Max Sizes")
                .font(.title)
                .foregroundColor(.gray)
            
            Group {
                Text("A great feature of the frame modifier is the min and max limits you can put on the height or width. If you want the frame adjustable, you can tell it how small it can get and how big it can get.")
                    .frame(maxWidth: .infinity)
                    .font(.title).padding()
                    .background(Color.pink)
                    .layoutPriority(1)
                
                HStack {
                    Image(systemName: "arrow.left")
                    Text("Expand Infinitely Horizontally")
                        .padding()
                    Image(systemName: "arrow.right")
                }
                .frame(maxWidth: .infinity)
                .background(Color.pink)
                
                VStack {
                    Image(systemName: "arrow.up")
                    Text("Expand Infinitely Vertically")
                        .padding()
                    Image(systemName: "arrow.down")
                }
                .frame(minHeight: 0, maxHeight: .infinity)
                .background(Color.pink)
                
            }
            .foregroundColor(.white)
            
        }
    }
}
struct Frame_Min_Max_Previews: PreviewProvider {
    static var previews: some View {
        Frame_Min_Max()
    }
}
