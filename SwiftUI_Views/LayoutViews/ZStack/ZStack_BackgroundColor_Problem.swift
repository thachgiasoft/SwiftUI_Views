//
//  ZStack_BackgroundColor_Problem.swift
//  SwiftUI_Views
//
//  Created by Mark Moeykens on 9/30/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct ZStack_BackgroundColor_Problem: View {
    var body: some View {
        ZStack {
            Color.gray
            
            VStack(spacing: 20) {
                Text("ZStack") // This view is under the notch
                    .font(.largeTitle)
                
                Text("Edges Ignoring Safe Area")
                    .foregroundColor(.white)
                
                Text("Having the ZStack edges ignoring the safe areas might be a mistake if you don't want other layers' edges to also ignore the safe areas. You notice that the top Text view is completely under the notch.")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.green)
                
                Spacer() // Added a spacer to push the views up.
            }
            .font(.title)
        }
        .edgesIgnoringSafeArea(.all)
    }
}


struct ZStack_BackgroundColor_Problem_Previews: PreviewProvider {
    static var previews: some View {
        ZStack_BackgroundColor_Problem()
    }
}
