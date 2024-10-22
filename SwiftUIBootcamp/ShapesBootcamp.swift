//
//  ShapesBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2024/10/22.
//

import SwiftUI

struct ShapesBootcamp: View {
    var circelBool: Bool = true
    var body: some View {
        if circelBool != true {
            Circle()
                .fill(Color.cyan)
                .foregroundStyle(.pink)
//                .stroke(Color.red)
//                .stroke(Color.blue, lineWidth: 30)

        } else {
            Circle()
//                .stroke(Color.orange, style: StrokeStyle(lineWidth: 80, lineCap: .butt, dash: [10]))
//                .frame(width: 100, height: 100)
                .trim(from: 0.2, to: 1)
                .stroke(Color.gray, lineWidth: 40, antialiased: false)
                .frame(width: 250, height: 250)
//                .position(x: 150, y: 150)
        }
        Ellipse()
            .frame(width: 200, height: 100)
        Capsule(style: .continuous)
            .frame(width: 200, height: 100)
        Rectangle()
            .frame(width: 200, height: 100)
        RoundedRectangle(cornerRadius: 10)
            .trim(from: 0.3, to: 1.0)
            .frame(width: 200, height: 100)
    }
    
}

#Preview {
    ShapesBootcamp()
}
