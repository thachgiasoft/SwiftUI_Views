//
//  GeometryReader_MinMidMax.swift
//  100Views
//
//  Created by Mark Moeykens on 9/25/19.
//  Copyright © 2019 Mark Moeykens. All rights reserved.
//

import SwiftUI

struct GeometryReader_MinMidMax: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("GeometryReader")
                .font(.largeTitle)
            
            Text("Min Mid Max")
                .foregroundColor(.gray)
            
            Text("You can also get the minimum (min), middle (mid), and maximum (max) X and Y coordinate from the geometry reader.")
                .layoutPriority(2)
            
            GeometryReader { geometry in
                VStack(alignment: .leading, spacing: 10) {
                    Text("Local Coordinate Space")
                    HStack(spacing: 155) {
                        // I'm converting to Int just so we don't have so many zeros
                        Text("minX: \(Int(geometry.frame(in: .local).minX))")
                        Text("midX: \(Int(geometry.frame(in: .local).midX))")
                        Text("maxX: \(Int(geometry.frame(in: .local).maxX))")
                    }
                    Text("Global Coordinate Space")
                    HStack(spacing: 150) {
                        // I'm converting to Int just so we don't have so many zeros
                        Text("minX: \(Int(geometry.frame(in: .global).minX))")
                        Text("midX: \(Int(geometry.frame(in: .global).midX))")
                        Text("maxX: \(Int(geometry.frame(in: .global).maxX))")
                    }
                }
            }
            .frame(height: 200)
            .foregroundColor(.white)
            .background(Color.pink)
            
            HStack {
                GeometryReader { geometry in
                    VStack(spacing: 170) {
                        Text("minY: \(Int(geometry.frame(in: .global).minY))")
                        Text("midY: \(Int(geometry.frame(in: .global).midY))")
                        Text("maxY: \(Int(geometry.frame(in: .global).maxY))")
                    }
                }
                .foregroundColor(.white)
                .background(Color.pink)
                
                Image("MinMidMax")
            }
                .layoutPriority(1) // Layout this HStack BEFORE the Geometry reader above it.
        }
        .font(.title)
        .padding()
    }
}

struct GeometryReader_MinMidMax_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader_MinMidMax()
    }
}
