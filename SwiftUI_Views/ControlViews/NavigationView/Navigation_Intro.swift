//
//  Navigation_1_00.swift
//  100Views
//
//  Created by Mark Moeykens on 6/19/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct Navigation_1_00 : View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("Theme3BackgroundColor")
                VStack(spacing: 25) {
                    Image(systemName: "globe")
                        .font(.largeTitle)
                    Text("NavigationView")
                        .font(.largeTitle)
                    Text("Introduction")
                        .foregroundColor(.gray)
                    
                    Text("Having a NavigationView will show nothing unless you also include a navigationBarTitle modifier.")
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
                // This creates a title in your nav bar
                .navigationBarTitle(Text("Navigation Views"))
                .edgesIgnoringSafeArea(.bottom)
        }
    }
}


#if DEBUG
struct Navigation_1_00_Previews : PreviewProvider {
    static var previews: some View {
        Navigation_1_00()
    }
}
#endif
