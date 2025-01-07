//
//  NavigationViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2025/1/7.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NavigationLink("Hello, world!", destination: MyOtherScreen())
                
                Text("Hello, World")
                Text("Hello, World")
                Text("Hello, World")
            }
            .navigationTitle("All Inboxes")
//            .navigationBarTitleDisplayMode(.automatic) // 上滑Title會改位置
//            .navigationBarHidden(true) //隱藏Bar
            
            
        }
    }
}

struct MyOtherScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.green.edgesIgnoringSafeArea(.all)
                .navigationTitle("Green Screen!")
                .navigationBarHidden(true)
            
            VStack {
                Button("Back Button") {
                    presentationMode.wrappedValue.dismiss()
                }
                NavigationLink("Click here", destination: Text("3re screen!"))

            }
        }
    }
}

#Preview {
    NavigationViewBootcamp()
}
