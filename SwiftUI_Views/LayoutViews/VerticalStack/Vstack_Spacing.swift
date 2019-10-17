//
//  Vstack_Spacing.swift
//  100Views
//
//  Created by Mark Moeykens on 7/23/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct Vstack_Spacing: View {
    var body: some View {
VStack(spacing: 80) {
    Text("VStack")
        .font(.largeTitle)
    
    Text("Spacing")
        .font(.title)
        .foregroundColor(.gray)
    
    Text("The VStack initializer allows you to set the spacing between all the views inside the VStack")
        .frame(maxWidth: .infinity)
        .padding().layoutPriority(1)
        .background(Color.blue).font(.title)
        .foregroundColor(.white)
    
    Image(systemName: "arrow.up.and.down.circle.fill")
        .font(.largeTitle)
    
    Text("The spacing here between all of these views is 80")
        .font(.title)

}
    }
}

#if DEBUG
struct Vstack_Spacing_Previews: PreviewProvider {
    static var previews: some View {
        Vstack_Spacing()
    }
}
#endif
