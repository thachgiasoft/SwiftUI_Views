//
//  Background_Gradients.swift
//  100Views
//
//  Created by Mark Moeykens on 8/23/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct Background_Gradients: View {
    private var gradientColors = Gradient(colors: [Color("Theme1Accent"), Color.purple])
    
    var body: some View {
        let linearGradient = LinearGradient(gradient: gradientColors,
                                            startPoint: .topLeading,
                                            endPoint: .bottomTrailing)
        
        return VStack(spacing: 20) {
            Text("Background")
                .font(.largeTitle)
            Text("Using Gradients")
                .font(.title)
                .foregroundColor(.gray)
            Text("Use the background modifier to apply gradients to views.")
                .frame(maxWidth: .infinity)
                .padding().colorInvert()
                .background(Color("Theme1Foreground"))
                .font(.title).layoutPriority(1)
            Text("Background gradients on shapes")
            Circle()
                .frame(width: 132, height: 44)
                .background(linearGradient)
            
            Text("Background gradients on controls")
            Button(action: {}) {
                Text("Button").padding()
            }
            .background(linearGradient)
            .cornerRadius(15)
            
            Text("Background gradients on layout views")
            HStack() {
                Text("This is in an HStack").padding()
            }
            .frame(maxWidth: .infinity)
            .background(linearGradient)
        }
    }
}

struct Background_Gradients_Previews: PreviewProvider {
    static var previews: some View {
        Background_Gradients()
    }
}
