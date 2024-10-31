//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2024/10/31.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var backgroundBool: Bool = false
    var body: some View {
        if backgroundBool == true {
            HStack(spacing: 0) {
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .background(
        //                Color.red
                        // LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 100, height: 100, alignment: .center)

                    )
                    .background(
                        Circle()
                            .fill(Color.red)
                            .frame(width: 120, height: 120, alignment: .center)
                    )
                
                Rectangle()
                    .fill(Color.clear)
                    .frame(width: 40, height: 50, alignment: .leading)
                
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .background(
        //                Color.red
                        // LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing)
                        Circle()
                            .fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .leading, endPoint: .trailing))
                            .frame(width: 100, height: 100, alignment: .center)

                    )
                    .background(
                        Circle()
                            .fill(Color.red)
                            .frame(width: 120, height: 120, alignment: .center)
                    )
            }
            
        } else {
//            Circle()
//                .fill(Color.pink)
//                .frame(width: 100, height: 100, alignment: .center)
//                .overlay {
//                    Text("1")
//                        .font(.largeTitle)
//                        .foregroundStyle(.white)
//                }
//                .background(
//                    Circle()
//                        .fill(Color.purple)
//                        .frame(width: 110, height: 110)
//                )
//            Rectangle()
//                .frame(width: 100, height: 100)
//                .overlay(alignment: .topLeading) {
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(width: 50, height: 50)
//                }
//                .background(alignment: .bottomTrailing) {
//                    Rectangle()
//                        .fill(Color.red)
//                        .frame(width: 150, height: 150)
//                }
            Image(systemName: "heart.fill")
                .font(.system(size: 40))
                .foregroundStyle(Color.white)
                .background(
                    Circle()
                        .fill(
                            LinearGradient(
                                gradient: Gradient(colors: [Color.red, Color.blue]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing
                            )
                        )
                        .frame(width: 100, height: 100)
                        .shadow(color: .purple,
                                radius: 5,
                                x: 6.0,
                                y: 10)
                        .overlay(alignment: .bottomTrailing, content: {
                            Circle()
                                .fill(Color.blue)
                                .frame(width: 35, height: 35)
                                .overlay(alignment: .center) {
                                    Text("6")
                                        .font(.headline)
                                        .foregroundStyle(.white)
                                }
                                .shadow(color: .cyan,
                                        radius: 5,
                                        x: 6.0,
                                        y: 10)
                        })
                )
            
        }
        

    }
}

#Preview {
    BackgroundAndOverlayBootcamp()
}
