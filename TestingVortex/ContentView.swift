//
//  ContentView.swift
//  TestingVortex
//
//  Created by Jair Moreno Gaspar on 13.03.24.
//

import SwiftUI
import Vortex

struct ContentView: View {
    var body: some View {
        VStack {
          
          VortexViewReader { proxy in
          
            VortexView(.confetti.makeUniqueCopy()) {
              Rectangle()
                .fill(.white)
                .frame(width: 16, height: 16)
                .tag("square")
              
              Circle()
                .fill(.white)
                .frame(width: 16)
                .tag("circle")
            }
            
            Button(action: {
              proxy.burst()
            }, label: {
              Text("effect")
            })
          }
          
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
