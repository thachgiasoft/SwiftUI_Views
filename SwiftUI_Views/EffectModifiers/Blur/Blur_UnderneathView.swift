//
//  Blur_UnderneathView.swift
//  100Views
//
//  Created by Mark Moeykens on 8/27/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct Blur_UnderneathView: View {
    @State private var showingModal = false
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                Text("Blur").font(.largeTitle)
                Text("Underneath Layers").font(.title).foregroundColor(.gray)
                Text("This is a screen that is underneath the popup being shown.")
                    .frame(maxWidth: .infinity)
                    .padding().font(.title).layoutPriority(1)
                    .background(Color.purple).foregroundColor(Color.white)
                
                Button(action: {
                    self.showingModal = true
                }) {
                    Text("Show popup")
                }
                Spacer()
                // Blur only when the modal popup is showing
            }.blur(radius: $showingModal.wrappedValue ? 3 : 0)
            
            // The Custom Popup is on top of the screen
            if $showingModal.wrappedValue {
                ZStack {
                    Color.black.opacity(0.4)
                        .edgesIgnoringSafeArea(.vertical)
                    // This VStack is the popup
                    VStack(spacing: 20) {
                        Text("Popup with the view underneath blurred")
                            .padding().font(.title)
                            .frame(maxWidth: .infinity)
                            .background(Color.orange)
                            .foregroundColor(Color.white)
                            .layoutPriority(1)
                        Spacer()
                        Button(action: {
                            self.showingModal = false
                        }) {
                            Text("Close")
                        }.padding()
                    }
                    .frame(width: 300, height: 300)
                    .background(Color.white)
                    .cornerRadius(20).shadow(radius: 20)
                }
            }
        }
    }
}

struct Blur_UnderneathView_Previews: PreviewProvider {
    static var previews: some View {
        Blur_UnderneathView()
    }
}
