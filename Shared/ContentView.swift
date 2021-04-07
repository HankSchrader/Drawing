//
//  ContentView.swift
//  Shared
//
//  Created by Erik Mikac on 4/5/21.
//

import SwiftUI

struct ContentView: View {
    @State private var colorCycle = 0.0
    var body: some View {
        VStack {
            ColorCylingCircle(amount: self.colorCycle)
                .frame(width: 300, height: 300)
        }
        .drawingGroup()
      
     }}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}
