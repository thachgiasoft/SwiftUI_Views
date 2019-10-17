//
//  Text_BaselineOffset.swift
//  100Views
//
//  Created by Mark Moeykens on 6/27/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct Text_BaselineOffset : View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Text")
                .font(.largeTitle)
            Text("Baseline Offset")
                .font(.title).foregroundColor(.gray)
            
            Image("BaselineOffset")
            
            Text("By default, your combined text will be on the same baseline, like this:")
                .frame(maxWidth: .infinity).padding()
                .foregroundColor(.white).background(Color.green)
                .font(.title).layoutPriority(1)
            
            Text("100").underline()
                + Text(" SWIFTUI ").font(.largeTitle).fontWeight(.light)
                    .foregroundColor(.blue).underline()
                + Text ("VIEWS").underline()
            
            Text("But you can offset each text view to create a cooler effect, like this:")
                .frame(maxWidth: .infinity).padding()
                .foregroundColor(.white).background(Color.green)
                .font(.title).layoutPriority(1)
            
            Group {
                Text("100").bold()
                    + Text(" SWIFTUI ")
                        .font(Font.system(size: 60))
                        .fontWeight(.ultraLight)
                        .foregroundColor(.blue)
                        .baselineOffset(-12) // Negative numbers make it go down
                    + Text ("VIEWS").bold()
            }
            .layoutPriority(2)
            
        }
    }
}

#if DEBUG
struct Text_BaselineOffset_Previews : PreviewProvider {
    static var previews: some View {
        Text_BaselineOffset()
    }
}
#endif
