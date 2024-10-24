//
//  GradientsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2024/10/23.
//

import SwiftUI

struct GradientsBootcamp: View {
    var gradientBool: Bool = false
    var body: some View {
        if gradientBool == true {
            RoundedRectangle(cornerRadius: 25.0)
                .fill(
    //                Color.red
                    LinearGradient(
                        gradient: Gradient(colors: [Color.orange, Color.cyan, Color.purple]),
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                )
                .frame(width: 300, height: 200)
        } else {
            RoundedRectangle(cornerRadius: 25.0)
                .fill(
                    RadialGradient(
                        gradient: Gradient(colors: [Color.white, Color.cyan, Color.black]),
                        center: .center,
                        startRadius: 10,
                        endRadius: 150)
                )
                .frame(width: 300, height: 200)
        }
        
        RoundedRectangle(cornerRadius: 25)
            .fill(
                AngularGradient(
                    colors: [Color.white, Color.cyan, Color.black, Color.pink],
                    center: .center,
                    angle: .degrees(90)
                )
            )
            .frame(width: 300, height: 200)
        
    }
}

#Preview {
    GradientsBootcamp()
}
