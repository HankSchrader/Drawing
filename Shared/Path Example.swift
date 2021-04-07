//
//  Path Example.swift
//  Drawing (iOS)
//
//  Created by Erik Mikac on 4/5/21.
//

import SwiftUI

struct Path_Example: View {
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 200, y: 100))
            path.addLine(to: CGPoint(x: 100, y: 300))
            path.addLine(to: CGPoint(x: 300, y: 300))
            path.addLine(to: CGPoint(x: 200, y: 100))
            path.addLine(to: CGPoint(x: 200, y: 300))
        }
        .stroke(Color.blue.opacity(0.25), style: StrokeStyle(lineWidth: 10, lineCap: .round, lineJoin: .round))
    }
}

struct Path_Example_Previews: PreviewProvider {
    static var previews: some View {
        Path_Example()
    }
}
