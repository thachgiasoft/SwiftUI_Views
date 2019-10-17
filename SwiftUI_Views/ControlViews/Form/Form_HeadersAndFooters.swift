//
//  Form_1_01_HeadersAndFooters.swift
//  100Views
//
//  Created by Mark Moeykens on 6/22/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct Form_1_01_HeadersAndFooters : View {
    var body: some View {
        Form {
            Section(header: Text("Section Header Text")) {
                Text("You can add any view in a section header")
                Text("Notice the default foreground color is gray")
            }
            
            Section(header: SectionTextAndImage(name: "People", image: "person.2.square.stack.fill")) {
                Text("Here's an example of a section header with image and text")
            }
            
            Section(header: Text(""), footer: Text("Total: $5,600.00").bold()) {
                Text("Here is an example of a section footer")
            }
        }
    }
}

struct SectionTextAndImage: View {
    var name: String
    var image: String
    
    var body: some View {
        HStack {
            Image(systemName: image).padding(.trailing)
            Text(name)
        }
        .padding()
        .font(.title)
        .foregroundColor(Color.red)
    }
}

#if DEBUG
struct Form_1_01_HeadersAndFooters_Previews : PreviewProvider {
    static var previews: some View {
        Form_1_01_HeadersAndFooters()
    }
}
#endif
