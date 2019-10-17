//
//  Slider_Intro.swift
//  100Views
//
//  Created by Mark Moeykens on 6/23/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct Slider_Intro : View {
    @State private var sliderValue = 0.5
    @State private var age = 18.0
    
    let ageFormatter: NumberFormatter = {
        let numFormatter = NumberFormatter()
        numFormatter.numberStyle = .spellOut
        return numFormatter
    }()
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Slider").font(.largeTitle)
            Text("Introduction").font(.title).foregroundColor(.gray)
            Text("Associate the Slider with an @State variable that will control where the thumb (circle) will be on the slider's track.")
                .frame(maxWidth: .infinity).padding()
                .background(Color.orange).foregroundColor(Color.black)
                .font(.title).layoutPriority(2)
            Group {
                Text("Default min value is 0.0 and max value is 1.0")
                    .font(.title).layoutPriority(1)
                Slider(value: $sliderValue)
                    .padding(.horizontal)
                
                Group {
                    Text("Value is: ") +
                        Text("\(sliderValue)").foregroundColor(.green)
                }
                .font(.title)
                
                Text("You can also set your own min and max value.")
                    .frame(maxWidth: .infinity).padding()
                    .background(Color.orange).foregroundColor(Color.black)
                    .font(.title).layoutPriority(3)
                    .padding(.top)
                
                Text("What is your age?").font(.title)
                Slider(value: $age, in: 1...100, step: 1)
                    .padding(.horizontal)
                
                Group {
                    Text("Age is: ") +
                        Text("\(ageFormatter.string(from: NSNumber(value: age))!)")
                            .foregroundColor(.pink)
                }
                .font(.title)
            }
        }
    }
}

#if DEBUG
struct Slider_Intro_Previews : PreviewProvider {
    static var previews: some View {
        Slider_Intro()
    }
}
#endif
