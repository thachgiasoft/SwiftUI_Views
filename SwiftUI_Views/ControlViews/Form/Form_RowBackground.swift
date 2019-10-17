//
//  Form_RowBackground.swift
//  100Views
//
//  Created by Mark Moeykens on 6/29/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct Form_RowBackground : View {
    var body: some View {
        Form {
            Section(header: Text("Form").font(.largeTitle)) {
                Text("List Row Background")
                    .font(.title)
                    .foregroundColor(.gray)
                
                Text("Forms and Lists allow you to set a background view with a function called \"listRowBackground(view:)\".")
                
                Text("You can call this modifier function on just one row, like this.")
                    .listRowBackground(Color.pink)
            }
            
            Section(header: Text("Whole Section")
                .font(.title).foregroundColor(.gray)) {
                    Text("Or you can set a view or color for a whole section.")
                    
                    Image(systemName: "smiley.fill")
                        .frame(maxWidth: .infinity, alignment: .center)
                        .font(.largeTitle)
                    
                    Text("Note, even though the color is set on the Section, the color of the section header is not affected.")
            }
            .foregroundColor(.white)
            .listRowBackground(Color.blue)
        }
    }
}
#if DEBUG
struct Form_RowBackground_Previews : PreviewProvider {
    static var previews: some View {
        Form_RowBackground()
    }
}
#endif
