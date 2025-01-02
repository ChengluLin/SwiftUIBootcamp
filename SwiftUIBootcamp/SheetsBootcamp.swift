//
//  SheetsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2024/12/27.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showSheet: Bool = false
    
    var body: some View {
        ZStack {
            Color.green
                .edgesIgnoringSafeArea(.all)
            
            Button {
                showSheet.toggle()
            } label: {
                Text("Button")
                    .foregroundStyle(.green)
                    .font(.headline)
                    .padding(20)
                    .background(Color.white.cornerRadius(10))
            }
            // 滿版
            .fullScreenCover(isPresented: $showSheet, content: {
                SecondScreen()

            })
            // 無滿版
//            .sheet(isPresented: $showSheet) {
//                // 不能在裡面寫邏輯，維持一個sheet就好
//                SecondScreen()
//            }
        }
    }
}

struct SecondScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Color.red
                .edgesIgnoringSafeArea(.all)
            
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .padding(20)
            }
        }
    }
}

#Preview {
    SheetsBootcamp()
//    SecondScreen()
}
