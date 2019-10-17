//
//  Navigation_DisplayMode.swift
//  100Views
//
//  Created by Mark Moeykens on 7/20/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct Navigation_DisplayMode: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("Theme3BackgroundColor")
                VStack(spacing: 25) {
                    Image(systemName: "globe")
                        .font(.largeTitle)
                    Text("NavigationView")
                        .font(.largeTitle)
                    Text("Display Mode")
                        .foregroundColor(.gray)
                    
                    Text("When you create a navigation bar title, you can specify if you want it large or small (inline) or just automatic.")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color("Theme3ForegroundColor"))
                        .foregroundColor(Color("Theme3BackgroundColor"))
                        .layoutPriority(1)
                    
                    Spacer()
                }
                .font(.title)
                .padding(.top, 25)
            }
                // Use .inline for the smaller nav bar
                .navigationBarTitle(Text("Navigation Views"), displayMode: .inline)
                .edgesIgnoringSafeArea(.bottom)
        }
    }
}

#if DEBUG
struct Navigation_DisplayMode_Previews: PreviewProvider {
    static var previews: some View {
        Navigation_DisplayMode()
    }
}
#endif
