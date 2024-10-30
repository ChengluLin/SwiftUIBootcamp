//
//  SwiftUIView.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2024/10/28.
//

import SwiftUI

struct FrameText: View {
    var body: some View {
        VStack(spacing: 0) {
            HStack(spacing: 0) {
                Rectangle()
                    .fill(Color.purple)
                    .frame(width: 20, height: 50, alignment: .leading)
                Text("Hell, World")
                    .frame(height: .infinity)
                    .background(Color.orange)
//                    .background(Color.orange)

                Rectangle()
                    .fill(Color.purple)
                    .frame(width:20, height: 50)
                
                Rectangle()
                    .fill(Color.red)
                    .frame(height: 50)
//                    .frame(maxWidth: .infinity, height: 50)
            }
//            .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top ?? 0) // 增加頂部安全區域的間距//            .frame(maxWidth: .infinity, alignment: .top)
            Rectangle()
                .fill(Color.green)
                .frame(height: 150)
            Rectangle()
                .fill(Color.yellow)
                .frame(height: 200)
            
//            Spacer()
            
        }
//                .background(Color.brown)
                .frame(maxHeight: .infinity, alignment: .topLeading)
//                .edgesIgnoringSafeArea(.all)
                .safeAreaInset(edge: .top) { // 自動增加頂部的安全間距
                            Color.clear.frame(height: 0) // 空白區域用於調整間距
                        }
        
    }
}

#Preview {
    FrameText()
}
