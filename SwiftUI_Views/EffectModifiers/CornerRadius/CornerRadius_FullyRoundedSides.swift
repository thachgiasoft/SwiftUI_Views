//
//  CornerRadius_FullyRoundedSides.swift
//  100Views
//
//  Created by Mark Moeykens on 9/2/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct CornerRadius_FullyRoundedSides: View {
    var body: some View {
        VStack(spacing: 15) {
            Group {
                Text("Corner Radius").font(.largeTitle)
                Text("Fully Rounded Sides").font(.title).foregroundColor(.gray)
                Text("There are different ways to get fully rounded sides of your view with corner radius.")
                    .frame(maxWidth: .infinity)
                    .font(.title).padding()
                    .background(Color.blue)
                    .layoutPriority(1)
                    .foregroundColor(.white)
            }
            
            Text("Use the Capsule shape").font(.title)
            HStack(spacing: 40) {
                Button(action: {}) {
                    HStack {
                        Image(systemName: "chart.bar.fill").padding()
                        Text("Button").padding()
                    }
                }
                .padding(.horizontal)
                .background(Capsule().foregroundColor(.blue))
                
                Button(action: {}) {
                    Image(systemName: "chart.bar.fill").padding()
                    Text("Button").padding()
                }
                .padding(.vertical)
                .background(Capsule().foregroundColor(.blue))
            }.foregroundColor(.white)
            
            
            Text("Use a number that is half the height/width or greater for the cornerRadius.").font(.title)
            Image("yosemite")
                .cornerRadius(.greatestFiniteMagnitude)
            
            Text("You can also use any large number such as .greatestFiniteMagnitude or .infinity.")
                .frame(maxWidth: .infinity)
                .font(.title).padding()
                .background(Color.blue)
                .layoutPriority(1)
                .foregroundColor(.white)
        }.edgesIgnoringSafeArea(.bottom)
    }
}

struct CornerRadius_FullyRoundedSides_Previews: PreviewProvider {
    static var previews: some View {
        CornerRadius_FullyRoundedSides()
    }
}
