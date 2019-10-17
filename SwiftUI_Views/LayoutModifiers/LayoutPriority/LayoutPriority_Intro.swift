//
//  LayoutPriority_Intro.swift
//  100Views
//
//  Created by Mark Moeykens on 9/21/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct LayoutPriority_Intro: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Layout Priority").font(.largeTitle)
            Text("Introduction").foregroundColor(.gray)
            Text("Use layout priority to tell the parent which child views get priority when it comes to assigning layout space.")
                .layoutPriority(1) // Second highest priority
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.yellow)
                .foregroundColor(.black)
            
            Text("No layout priority (default is 0)")
            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    Image("profile2").mask(Circle())
                    Text("Janice Okoro").font(.largeTitle)
                }
                Text("Lorem ipsum dolor amet laborum gastropub laboris magna.")
                    .font(.body)
            }
            .padding()
            .foregroundColor(.black)
            .background(Color.yellow.cornerRadius(8))
            .padding(.horizontal)
            
            Text("Layout priority used")
            VStack(alignment: .leading, spacing: 8) {
                HStack {
                    Image("profile2").mask(Circle())
                    Text("Janice Okoro").font(.largeTitle)
                }
                Text("Lorem ipsum dolor amet laborum gastropub laboris magna.")
                    .font(.body)
            }
                // Give this view spacing priority over the other child views
                .layoutPriority(2) // Highest priority
                .padding()
                .foregroundColor(.black)
                .background(Color.yellow.cornerRadius(8))
                .padding(.horizontal)
        }
        .font(.title)
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct LayoutPriority_Intro_Previews: PreviewProvider {
    static var previews: some View {
        LayoutPriority_Intro()
    }
}
