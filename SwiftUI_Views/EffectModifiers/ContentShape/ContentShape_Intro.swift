//
//  ContentShape_Intro.swift
//  100Views
//
//  Created by Mark Moeykens on 8/24/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct ContentShape_Intro: View {
    @State private var likes = 0
    
    var body: some View {
        VStack {
            Text("Content Shape").font(.largeTitle)
            Text("Introduction").font(.title).foregroundColor(.gray)
            Text("Sometimes you want to increase the size of a tappable area around content. You can use the contentShape modifier to do this.")
                .frame(maxWidth: .infinity)
                .padding().foregroundColor(.white)
                .background(Color.pink)
                .font(.title).layoutPriority(2)
            Text("In this example, I want users to tap anywhere inside the red circle to activate the onTapGesture. But right now it will only work if they tap on the actual image (content).")
                .padding().layoutPriority(1)
            Image(systemName: likes > 0 ? "heart.fill" : "heart")
                .foregroundColor(likes > 0 ? .red : .gray)
                .frame(width: 100, height: 100)
                .font(.title)
                .background(Circle().stroke(Color.red, lineWidth: 1))
                .onTapGesture {
                    self.likes = self.likes + 1
            }
            
            Text("Hit me! (\(likes))")
            
            Text("To fix this, you could add a solid color. But if you don't want to do that, then add a contentShape modifier. I will use a Circle as the shape since I want it be be like the example above.")
                .padding().layoutPriority(1)
            Image(systemName: likes > 0 ? "heart.fill" : "heart")
                .foregroundColor(likes > 0 ? .red : .gray)
                .frame(width: 100, height: 100)
                .font(.title)
                .background(Circle().stroke(Color.red, lineWidth: 1))
                .contentShape(Circle()) // Expands to fit limits frame
                .onTapGesture {
                    self.likes = self.likes + 1
            }
        }
        
    }
}

struct ContentShape_Intro_Previews: PreviewProvider {
    static var previews: some View {
        ContentShape_Intro()
    }
}
