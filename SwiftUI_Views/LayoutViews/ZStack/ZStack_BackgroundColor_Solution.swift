//
//  ZStack_BackgroundColor_Solution.swift
//  SwiftUI_Views
//
//  Created by Mark Moeykens on 9/30/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct ZStack_BackgroundColor_Solution: View {
    var body: some View {
        ZStack {
            Color.gray
                .edgesIgnoringSafeArea(.all) // Have JUST the color ignore the safe areas, not the VStack.
            
            VStack(spacing: 20) {
                Text("ZStack")
                    .font(.largeTitle)
                
                Text("Color Ignores Safe Area Edges")
                    .foregroundColor(.white)
                
                Text("To solve the problem, you want just the color (bottom layer) to ignore the safe area edges and fill the screen. Other layers above it will respect the safe areas.")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color.green)
                Spacer()
            }
            .font(.title)
        }
    }
}

struct ZStack_BackgroundColor_Solution_Previews: PreviewProvider {
    static var previews: some View {
        ZStack_BackgroundColor_Solution()
    }
}
