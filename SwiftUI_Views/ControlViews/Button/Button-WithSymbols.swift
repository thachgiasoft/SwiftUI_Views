//
//  Button-WithImage.swift
//  100Views
//
//  Created by Mark Moeykens on 6/17/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct Button_WithImage : View {
    var body: some View {
        VStack(spacing: 60) {
            Text("Button").font(.largeTitle)
            Text("With SF Symbols")
                .font(.title).foregroundColor(.gray)
            Text("Buttons can be composed with SF Symbols too.")
                .padding().frame(maxWidth: .infinity)
                .background(Color.purple).layoutPriority(1)
                .foregroundColor(.white).font(.title)
            
            Button(action: {}) {
                HStack{
                    Text("Button With Symbol")
                        .padding(.horizontal)
                    Image(systemName: "gift.fill")
                }.padding()
            }
            .foregroundColor(Color.white)
            .background(Color.purple)
            .cornerRadius(8)
            
            Button(action: {}) {
                HStack{
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                        .padding(.horizontal)
                }.padding()
            }
            .foregroundColor(Color.white)
            .background(Color.purple)
            .cornerRadius(8)
            
            Button(action: {}) {
                Image(systemName: "video.fill")
                Text("Record")
                    .padding(.horizontal)
            }
            .padding()
            .foregroundColor(Color.white)
            .background(Color.purple)
            .cornerRadius(.infinity)
        }
    }
}

#if DEBUG
struct Button_WithImage_Previews : PreviewProvider {
    static var previews: some View {
        Button_WithImage()
    }
}
#endif
