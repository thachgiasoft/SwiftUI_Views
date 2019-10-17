//
//  DepthStack.swift
//  100Views
//
//  Created by Mark Moeykens on 9/27/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct DepthStack: View {
    var body: some View {
        ZStack {
            Spacer()
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.orange)
                .offset(x: -60, y: -60)
                .frame(width: 250, height: 400)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.orange)
                .shadow(radius: 8)
            .frame(width: 250, height: 400)
            
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.orange)
                .offset(x: 60, y: 60)
                .shadow(radius: 8)
            .frame(width: 250, height: 400)
        }
        .padding(24)
        .background(RoundedRectangle(cornerRadius: 20).stroke(Color.orange, lineWidth: 2))
        .padding()
    }
}

struct DepthStack_Previews: PreviewProvider {
    static var previews: some View {
        DepthStack()
    }
}
