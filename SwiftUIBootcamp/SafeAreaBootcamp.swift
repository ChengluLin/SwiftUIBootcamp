//
//  SafeAreaBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2024/11/29.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var safeAreaNum: Int = 3
    var body: some View {
        if safeAreaNum == 0 {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .frame(maxWidth: .greatestFiniteMagnitude, maxHeight: .infinity)
                .background(Color.red)
                .padding(.vertical) // Safe Area
        } else if safeAreaNum == 1 {
            ZStack {
                // background
                Color.blue
                    .ignoresSafeArea(edges: .all)
                
                // foreground
                VStack {
                    Text("Hello, World!")
                    Spacer()
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.red)
//            .ignoresSafeArea(edges: .all)
            }
        } else if safeAreaNum == 2 {
            ZStack {
                
                Color.blue
                    .ignoresSafeArea(edges: .all)
                
                ScrollView {
                    Text("Title goes here")
                        .font(.largeTitle)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    ForEach(0..<10) { index in
                            RoundedRectangle(cornerRadius: 25)
                            .fill(Color.white)
                            .frame(height: 150)
                            .shadow(radius: 10)
                            .padding(20)
                    }
                }
                .background(Color.red)
                .padding(.vertical)
            }
        } else if safeAreaNum == 3 {
            
            ScrollView {
                VStack {
                    Text("Title goes here")
                        .font(.largeTitle)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    ForEach(0..<10) { index in
                            RoundedRectangle(cornerRadius: 25)
                            .fill(Color.white)
                            .frame(height: 150)
                            .shadow(radius: 10)
                            .padding(20)
                    }
                }
            }
            .background(Color.blue)
            .background(
                Color.red
            )
//            .ignoresSafeArea(edges: .all)
            .padding(.vertical)

        }
       
    }
}

#Preview {
    SafeAreaBootcamp()
}
