//
//  ExtractSubviewsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2024/12/7.
//

import SwiftUI

struct ExtractSubviewsBootcamp: View {
    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea(.all)
            
            contentLayer
        }
    }
    
    var contentLayer: some View {
        HStack() {
            MyItem(title: "Apples", count: 1, color: .red)
                .frame(width: 90)
                .padding()
            MyItem(title: "blue", count: 2, color: .blue)
                .frame(width: 90)
                .background(Color.blue)
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .padding()
            MyItem(title: "orange", count: 3, color: .orange)
                .frame(width: 90)
                .padding()
        }
    }
}

#Preview {
    ExtractSubviewsBootcamp()
}

struct MyItem: View {
    
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack {
            Text("\(count)")
            Text(title)
        }
        .padding()
        .background(color)
        .clipShape(RoundedRectangle(cornerRadius: 30))
    }
}
