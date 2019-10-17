//
//  Subtitle.swift
//  100Views
//
//  Created by Mark Moeykens on 9/28/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct Subtitle: View {
    var body: some View {
        // Only one view can be returned from the body property.
        // Add 20 points between views within this container.
        VStack(spacing: 20) {
            
            Text("Title")
                .font(.largeTitle)
                    
            Text("Subtitle")
                .font(.title) // Set to be the second largest font.
                .foregroundColor(Color.gray) // Change text color to gray.
        }
    }
}

struct Subtitle_Previews: PreviewProvider {
    static var previews: some View {
        Subtitle()
    }
}
