//
//  TabbedView_Navigating.swift
//  100Views
//
//  Created by Mark Moeykens on 7/4/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct TabView_Navigating : View {
    @State private var selectedTab = 1 // Set which tab is active
    
    var body: some View {
        // Tell the TabView which variable to listen to for changes
        TabView(selection: $selectedTab) {
            // Tab 1
            VStack(spacing: 20) {
                Text("TabView")
                    .font(.largeTitle)
                Text("Navigation")
                    .font(.title).foregroundColor(.gray)
                Text("Add a unique tag value to each screen (view) you want to programmatically navigate to. You can then bind a variable to the TabView's selection property and change that variable to navigate.")
                    .frame(maxWidth: .infinity)
                    .padding().font(.title).layoutPriority(1)
                    .background(Color.yellow)
                    .foregroundColor(Color.black)
                
                Button("Go to Tab 3") {
                    self.selectedTab = 3
                }.font(.title)
            }.tabItem {
                Image(systemName: "star.fill")
            }.tag(1)
            
            // Tab 2
            Text("Second Screen")
                .tabItem {
                    Image(systemName: "moon.fill")
            }.tag(2)
            
            // Tab 3
            Text("Third Screen")
                .tabItem {
                    Image(systemName: "sun.min.fill")
            }.tag(3)
        }
    }
}

#if DEBUG
struct TabView_Navigating_Previews : PreviewProvider {
    static var previews: some View {
        TabView_Navigating()
    }
}
#endif
