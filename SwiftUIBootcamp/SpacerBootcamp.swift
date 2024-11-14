//
//  SpacerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2024/11/14.
//

import SwiftUI

struct SpacerBootcamp: View {
    
    var spacerNum: Int = 2
    
    var body: some View {
        if spacerNum == 0 {
            HStack(spacing: 0) {
                Rectangle()
                    .frame(width: 100, height: 100)
                
                Spacer()
                    .frame(height: 10)
                    .background(Color.orange)
                
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 200, height: 100)
            }
            .background(Color.blue)
        } else if spacerNum == 1 {
            HStack(spacing: 0) {
                Spacer(minLength: 50) // minLength可控制空白區大小 但父畫面必須加入padding()
                    .frame(height: 10)
                    .background(Color.orange)
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 50, height: 50)
                Spacer()
                    .frame(height: 10)
                    .background(Color.orange)
                
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 50, height: 50)
                Spacer()
                    .frame(height: 10)
                    .background(Color.orange)
                Rectangle()
                    .fill(Color.cyan)
                    .frame(width: 50, height: 50)
                Spacer(minLength: 0)
                    .frame(height: 10)
                    .background(Color.orange)
            }
            .background(Color.yellow)
            .padding(.horizontal, 200)
            .background(Color.blue)
        } else if spacerNum == 2 {
            VStack {
                HStack(spacing: 0) {
                    
                    Image(systemName: "xmark")
                    Spacer()
                    //                    .frame(width: 10)
                    //                    .background(Color.orange)
                    
                    Image(systemName: "gear")
                    
                }
                //                .background(Color.yellow)
                .padding(.horizontal)
                //            .background(Color.blue)
                Spacer()
                //                    .frame(width: 10)
                //                    .background(Color.orange)
                
                Rectangle()
                    .frame(height: 55)
            }
            //            .background(Color.yellow)
        }
        
    }
}

#Preview {
    SpacerBootcamp()
}
