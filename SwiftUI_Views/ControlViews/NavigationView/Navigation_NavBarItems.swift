//
//  Navigation_2_00.swift
//  100Views
//
//  Created by Mark Moeykens on 6/19/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct Navigation_2_00 : View {
    @State var isShowingNotifications = false
    @State var isShowingActions = false
    
    var body: some View {
        NavigationView {
            VStack(spacing: 25) {
                Image(systemName: "globe").font(.largeTitle)
                Text("NavigationView")
                Text("Navigation Bar Items").foregroundColor(.gray)
                Image("NavBarItems")
                Text("You can add navigation bar buttons to the leading or trailing (or both) sides of a navigation bar.")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color("Theme3ForegroundColor"))
                    .foregroundColor(Color("Theme3BackgroundColor"))
                    .layoutPriority(1)
                Text("Use the accentColor modifier on the navigation bar items to change them from the default accent color.")
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(Color("Theme3ForegroundColor"))
                    .foregroundColor(Color("Theme3BackgroundColor"))
                    .layoutPriority(1)
                Spacer()
            }
            .font(.title)
            .padding(.top, 25)
            .navigationBarTitle(Text("Navigation Bar Items"),
                                displayMode: .inline)
                // Add some bar items to the nav bar
                .navigationBarItems(
                    // Button on the leading side
                    leading:
                    Button(action: { }) {
                        Image(systemName: "bell.fill")
                    }.accentColor(.pink)
                    // Button on the trailing side
                    , trailing:
                    Button("Actions", action: { })
                        .accentColor(.pink)
            )
        }
    }
}

#if DEBUG
struct Navigation_2_00_Previews : PreviewProvider {
    static var previews: some View {
        Navigation_2_00()
    }
}
#endif
