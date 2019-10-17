//
//  Edges_Intro.swift
//  100Views
//
//  Created by Mark Moeykens on 8/24/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct Edges_Intro: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Edges Ignoring Safe Area")
                .padding().font(.largeTitle)
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .padding(.top, 50)
                .background(Color.orange)
            
            Text("Introduction")
                .font(.title)
                .foregroundColor(.gray)
            
            Text("Extend the header color past the safe area at the top.")
                .frame(maxWidth: .infinity)
                .padding().foregroundColor(.white)
                .background(Color.orange)
                .font(.title).layoutPriority(1)
            
            Spacer()
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct Edges_Intro_Previews: PreviewProvider {
    static var previews: some View {
        Edges_Intro()
    }
}
