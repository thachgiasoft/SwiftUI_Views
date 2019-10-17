//
//  Navigation_BarHidden.swift
//  100Views
//
//  Created by Mark Moeykens on 9/21/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct Navigation_BarHidden: View {
    @State private var isHidden = true
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("Theme3BackgroundColor")
                VStack(spacing: 25) {
                    Image(systemName: "globe").font(.largeTitle)
                    Text("NavigationView").font(.largeTitle)
                    Text("Navigation Bar Hidden")
                        .foregroundColor(.gray)
                    Image("NavBarHidden")
                    Text("If you don't want to show a navigation bar, you can use the navigationBarHidden modifier to hide it.")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color("Theme3ForegroundColor"))
                        .foregroundColor(Color("Theme3BackgroundColor"))
                        .layoutPriority(1)
                    Toggle("Hide Nav Bar", isOn: $isHidden)
                        .padding()
                    Spacer()
                }
                .font(.title)
                .padding(.top, 70)
            }
            // For some reason, you have to have a bar title for the hidden modifier to work.
            .navigationBarTitle(Text("Navigation Views"))
            // Hide when the Toggle is on
            .navigationBarHidden(isHidden)
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct Navigation_BarHidden_Previews: PreviewProvider {
    static var previews: some View {
        Navigation_BarHidden()
    }
}
