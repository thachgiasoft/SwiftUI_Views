//
//  List_HeadAndFooters.swift
//  100Views
//
//  Created by Mark Moeykens on 6/22/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct List_HeadAndFooters : View {
    var data = ["Evans", "Lemuel James Guerrero", "Mark", "Durtschi", "Chase", "Adam", "Rodrigo"]
    
    var body: some View {
        List {
            Section(header: Header(), footer: Text("7 People on Staff")) {
                // ForEach will handle the row creation
                ForEach(data, id: \.self) { datum in
                    NameRow(content: datum)
                }
            }
        }.edgesIgnoringSafeArea(.top)
    }
}

struct Header: View {
    var body: some View {
        Text("STAFF")
            .font(Font.system(size: 120, design: Font.Design.serif))
            .foregroundColor(Color.red)
            .background(Image("mountains"))
            .frame(height: 200)
            .listRowInsets(EdgeInsets(top: 0, leading: 40, bottom: 0, trailing: 0))
    }
}

struct NameRow: View {
    var content: String
    var body: some View {
        HStack {
            Image("PineTree").foregroundColor(Color(red: 0.203, green: 0.443, blue: 0.158))
            Text(content)
            Spacer()
        }.padding()
    }
}

#if DEBUG
struct List_HeadAndFooters_Previews : PreviewProvider {
    static var previews: some View {
        List_HeadAndFooters()
    }
}
#endif
