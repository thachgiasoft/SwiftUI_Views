//
//  Edges_Orientation.swift
//  100Views
//
//  Created by Mark Moeykens on 8/24/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct Edges_Orientation: View {
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Edges Ignoring Safe Area")
                .padding().font(.largeTitle)
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .padding(.top, horizontalSizeClass == UserInterfaceSizeClass.compact ? 50 : 0)
                .background(Color.orange)
            
            Text("Handling Orientation")
                .font(.title)
                .foregroundColor(.gray)
            
            Text("By examining the environment variable for horizontal size class, you can tell if this device is portrait or landscape and set the top padding accordingly.")
                .frame(maxWidth: .infinity)
                .padding().foregroundColor(.white)
                .background(Color.orange)
                .font(.title).layoutPriority(1)
            
            Spacer()
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct Edges_Orientation_Previews: PreviewProvider {
    static var previews: some View {
        Edges_Orientation()
    }
}
