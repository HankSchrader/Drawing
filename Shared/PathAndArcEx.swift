//
//  PathAndArcEx.swift
//  Drawing
//
//  Created by Erik Mikac on 4/6/21.
//

import SwiftUI


struct Arc: Shape, InsettableShape {
    var startAngle: Angle
    var endAngle: Angle
    var clockwise: Bool
    var insetAmount: CGFloat = 0
    func path(in rect: CGRect) -> Path {
  
        let rotationAdjustment = Angle.degrees(90)
        let modifiedStart = startAngle - rotationAdjustment
        let modifiedEnd = endAngle - rotationAdjustment

        var path = Path()
        path.addArc(center: CGPoint(x: rect.midX, y: rect.midY), radius: rect.width / 4 - insetAmount, startAngle: modifiedStart, endAngle: modifiedEnd, clockwise: !clockwise)

        return path
    }
    
    func inset(by amount: CGFloat) -> some InsettableShape {
        var arc = self
        arc.insetAmount += amount
        return arc
    }
}
struct PathAndArcEx: View {
    var body: some View {
        Arc(startAngle: .degrees(0), endAngle: .degrees(180), clockwise: true)
            .stroke(Color.blue, lineWidth: 10)
            .frame(width: 300, height: 300)
  
    }
}

struct PathAndArcEx_Previews: PreviewProvider {
    static var previews: some View {
        PathAndArcEx()
    }
}
