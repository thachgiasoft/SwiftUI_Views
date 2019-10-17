//
//  Navigation_CustomBackButton.swift
//  100Views
//
//  Created by Mark Moeykens on 9/21/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct Navigation_CustomBackButton: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("Theme3BackgroundColor")
                VStack(spacing: 25) {
                    Image(systemName: "globe").font(.largeTitle)
                    Text("NavigationView").font(.largeTitle)
                    Text("Custom Back Button").foregroundColor(.gray)
                    Image("NavBarBackButtonHidden")
                    
                    NavigationLink("Go To Detail",
                                   destination: Navigation_CustomBackButton_Detail())
                    Spacer()
                }
                .font(.title)
                .padding(.top, 70)
            }
            .navigationBarTitle(Text("Navigation Views"))
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}
// Second Screen
struct Navigation_CustomBackButton_Detail: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color("Theme3BackgroundColor")
            VStack(spacing: 25) {
                Image(systemName: "globe").font(.largeTitle)
                Text("NavigationView").font(.largeTitle)
                Text("Custom Back Button").foregroundColor(.gray)
                HStack {
                    Image("NavBarBackButtonHidden")
                    Image(systemName: "plus")
                    Image("NavBarItems")
                }
                Text("Hide the system back button and then use the navigation bar items modifier to add your own.")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color("Theme3ForegroundColor"))
                    .foregroundColor(Color("Theme3BackgroundColor"))
                
                Spacer()
            }
            .font(.title)
            .padding(.top, 50)
        }
        .navigationBarTitle(Text("Detail View"), displayMode: .inline)
        .edgesIgnoringSafeArea(.bottom)
            // Hide the system back button
            .navigationBarBackButtonHidden(true)
            // Add your custom back button here
            .navigationBarItems(leading:
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    HStack {
                        Image(systemName: "arrow.left.circle")
                        Text("Go Back")
                    }
            })
    }
}

struct Navigation_CustomBackButton_Previews: PreviewProvider {
    static var previews: some View {
        Navigation_CustomBackButton_Detail()
    }
}
