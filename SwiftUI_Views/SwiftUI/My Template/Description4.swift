//
//  Description4.swift
//  100Views
//
//  Created by Mark Moeykens on 9/28/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct Description4: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Title")
                .font(.largeTitle)
            
            Text("Subtitle")
                .font(.title)
                .foregroundColor(.gray)
            
            Text("Short description of what I am demonstrating goes here.")
                .frame(maxWidth: .infinity)
                .font(.title)
                .foregroundColor(Color.white)
                .padding()
                .background(Color.blue)
                .layoutPriority(1) // This text view has the highest priority over the other views in this VStack for the calculation of the space it needs on the screen.
        }
    }
}

struct Description4_Previews: PreviewProvider {
    static var previews: some View {
        Description4()
    }
}
