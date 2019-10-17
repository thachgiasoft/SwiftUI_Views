//
//  Button-TextModifiers.swift
//  For Book
//

import SwiftUI

struct Button_TextModifiers : View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Button")
                .font(.largeTitle)
            
            Text("Text Composition")
                .font(.title)
                .foregroundColor(.gray)
            
            Text("You can add more than one text view to a button. By default they are composed within a VStack.")
                .padding().frame(maxWidth: .infinity)
                .background(Color.purple).layoutPriority(2)
                .foregroundColor(.white).font(.title)
            
            Button(action: {}, label: {
                Text("New User")
                    .font(.title)
                Text("(Register Here)")
            })
            
            Text("Using an HStack")
                .padding().frame(maxWidth: .infinity)
                .background(Color.purple).layoutPriority(1)
                .foregroundColor(.white).font(.title)
            
            Button(action: {}, label: {
                HStack {
                    Text("Forgot Password?")
                    Text("Tap to Recover")
                        .foregroundColor(.orange)
                }.font(.title)
            })
        }
    }
}

#if DEBUG
struct Button_TextModifiers_Previews : PreviewProvider {
    static var previews: some View {
        Button_TextModifiers()
    }
}
#endif
