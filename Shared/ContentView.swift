//
//  ContentView.swift
//  Shared
//
//  Created by Erik Mikac on 4/5/21.
//

import SwiftUI

struct Checkerboard: Shape {

    var rows: Int
    var columns: Int
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        let rowSize = rect.height / CGFloat(rows)
        
        let columnSize = rect.width / CGFloat(columns)
        
        func path(in rect: CGRect) -> Path {
            var path = Path()

            // figure out how big each row/column needs to be
            let rowSize = rect.height / CGFloat(rows)
            let columnSize = rect.width / CGFloat(columns)

            // loop over all rows and columns, making alternating squares colored
            for row in 0..<rows {
                for column in 0..<columns {
                    if (row + column).isMultiple(of: 2) {
                        // this square should be colored; add a rectangle here
                        let startX = columnSize * CGFloat(column)
                        let startY = rowSize * CGFloat(row)

                        let rect = CGRect(x: startX, y: startY, width: columnSize, height: rowSize)
                        path.addRect(rect)
                    }
                }
            }

            return path
        }
    }
}

struct ContentView: View {
    
    @State private var insetAmount: CGFloat = 50
    var body: some View {
       Text("Hello World")
    }

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}
