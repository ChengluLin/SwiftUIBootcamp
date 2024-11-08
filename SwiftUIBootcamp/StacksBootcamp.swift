//
//  StacksBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2024/11/5.
//

import SwiftUI

struct StacksBootcamp: View {
    // Vstacks -> Vertical
    // Hstacks -> Horizontal
    // Zstacks -> zIndex(back to front)
    var stack: Int = 4
    var body: some View {
        if stack == 0 {
            VStack(alignment: .leading, spacing: nil, content: {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 200, height: 200)
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 150, height: 150)
                
                Rectangle()
                    .fill(Color.orange)
                    .frame(width: 100, height: 100)
            })
        } else if stack == 1 {
//            HStack(alignment: .bottom, spacing: nil, content: {
//                Rectangle()
//                    .fill(Color.red)
//                    .frame(width: 200, height: 200)
//                
//                Rectangle()
//                    .fill(Color.green)
//                    .frame(width: 150, height: 150)
//                
//                Rectangle()
//                    .fill(Color.orange)
//                    .frame(width: 100, height: 100)
//            })
            ZStack(alignment: .bottom, content: {
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 200, height: 200)
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 150, height: 150)
                
                Rectangle()
                    .fill(Color.orange)
                    .frame(width: 100, height: 100)
            })
        } else if stack == 2 {
            ZStack(alignment: .leading) {
                Rectangle()
                    .fill(Color.yellow)
                    .frame(width: 350, height: 500, alignment: .center)
                
                VStack(alignment: .leading, spacing: 40) {
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: 150, height: 150)
                    
                    Rectangle()
                        .fill(Color.green)
                        .frame(width: 100, height: 100)
                    
                    HStack(alignment: .center) {
                        Rectangle()
                            .fill(Color.purple)
                            .frame(width: 50, height: 50)
                        Rectangle()
                            .fill(Color.pink)
                            .frame(width: 75, height: 75)
                        Rectangle()
                            .fill(Color.blue)
                            .frame(width: 25, height: 25)
                    }
                    .background(Color.white)
                }
                .background(Color.black)
            }
        } else if stack == 3 {
            VStack(alignment: .center, spacing: 20) {
                Text("5")
                    .font(.largeTitle)
                    .underline()
                Text("Items in you cart:")
                    .font(.caption)
                    .foregroundStyle(.gray)
            }
        } else if stack == 4 {
            VStack(spacing: 40) {
                
                ZStack {
                    Circle()
                        .frame(width: 100, height: 100)
                    
                    Text("1")
                        .font(.title)
                        .foregroundStyle(.white)
                }
                
                Text("1")
                    .font(.title)
                    .foregroundStyle(.white)
                    .background(
                        Circle()
                            .frame(width: 100, height: 100)
                    )
            }
        }

    }
}

#Preview {
    StacksBootcamp()
}
