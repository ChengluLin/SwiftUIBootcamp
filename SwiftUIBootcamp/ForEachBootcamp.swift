//
//  ForEachBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2024/11/20.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    var forEachNum: Int = 1
    let data: [String] = ["Hi", "Hello", "Hey everyone"]
    let myString: String = "Hello"
    
    var body: some View {
        if forEachNum == 0 {
            VStack {
                ForEach(0..<10) { index in
    //                Text("Hi: \(index)")
                    HStack {
                        Circle()
                            .frame(width: 30, height: 30)
                        Text("\(index)")
                    }
                }
            }
        } else if forEachNum == 1 {
            VStack(alignment: .leading) {
                ForEach(Array(data.indices), id: \.self) { index in
                    Text("\(data[index]): \(index)")
                }
            }
        }

    }
}

#Preview {
    ForEachBootcamp()
}
