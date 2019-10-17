//
//  Navigation_BackButtonHidden.swift
//  100Views
//
//  Created by Mark Moeykens on 9/21/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

// First Screen
struct Navigation_BackButtonHidden: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("Theme3BackgroundColor")
                VStack(spacing: 25) {
                    Image(systemName: "globe").font(.largeTitle)
                    Text("NavigationView").font(.largeTitle)
                    Text("Back Button Hidden").foregroundColor(.gray)
                    Image("NavBarBackButtonHidden")
                    
                    NavigationLink("Go To Detail",
                                   destination: BackButtonHiddenDetail())
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
struct BackButtonHiddenDetail: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color("Theme3BackgroundColor")
            VStack(spacing: 25) {
                Image(systemName: "globe").font(.largeTitle)
                Text("NavigationView").font(.largeTitle)
                Text("Back Button Hidden").foregroundColor(.gray)
                Image("NavBarBackButtonHidden")
                Text("This nav bar has no back button because it was hidden on this view.")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color("Theme3ForegroundColor"))
                    .foregroundColor(Color("Theme3BackgroundColor"))
                    .layoutPriority(1)
                
                Button("Go Back") {
                    self.presentationMode.wrappedValue.dismiss()
                }
                
                Spacer()
            }
            .font(.title)
            .padding(.top, 50)
        }
        .navigationBarTitle(Text("Detail View"), displayMode: .inline)
        .edgesIgnoringSafeArea(.bottom)
        // Hide the back button
        .navigationBarBackButtonHidden(true)
    }
}


struct Navigation_BackButtonHidden_Previews: PreviewProvider {
    static var previews: some View {
        BackButtonHiddenDetail()
    }
}
