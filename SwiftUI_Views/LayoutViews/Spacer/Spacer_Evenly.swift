//
//  Spacer_Evenly.swift
//  100Views
//
//  Created by Mark Moeykens on 9/4/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct Spacer_Evenly: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Spacer")
                .font(.largeTitle)
            
            Text("Evenly Spaced")
                .foregroundColor(.gray)
            
            Text("Use Spacer to evenly space views horizontally so they look good on any device.")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.yellow)
                .foregroundColor(.black)
                .layoutPriority(1)
            Text("Before")
            HStack {
                VStack(alignment: .leading) {
                    Text("Names")
                        .font(.largeTitle)
                        .underline()
                    Text("Chase")
                    Text("Rodrigo")
                    Text("Mark")
                    Text("Evans")
                }
                VStack(alignment: .leading) {
                    Text("Color")
                        .font(.largeTitle)
                        .underline()
                    Text("Red")
                    Text("Orange")
                    Text("Green")
                    Text("Blue")
                }
            }
            Text("After")
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.yellow)
                .foregroundColor(.black)
            
            HStack {
                Spacer()
                VStack(alignment: .leading) {
                    Text("Names")
                        .font(.largeTitle)
                        .underline()
                    Text("Chase")
                    Text("Rodrigo")
                    Text("Mark")
                    Text("Evans")
                }.layoutPriority(1)
                Spacer()
                VStack(alignment: .leading) {
                    Text("Color")
                        .font(.largeTitle)
                        .underline()
                    Text("Red")
                    Text("Orange")
                    Text("Green")
                    Text("Blue")
                }.layoutPriority(1)
                Spacer()
            }
            Spacer()
        }.font(.title)
    }
}

struct Spacer_Evenly_Previews: PreviewProvider {
    static var previews: some View {
        Spacer_Evenly()
    }
}
