//
//  ScrollViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2024/11/22.
//

import SwiftUI

struct ScrollViewBootcamp: View {
    var scrollNum: Int = 3
    var body: some View {
        if scrollNum == 0 {
            ScrollView(.vertical,showsIndicators: false) {
                VStack {
                    ForEach(0..<50) { index in
                        Rectangle()
                            .fill(Color.blue)
                            .frame(height: 300)
                    }
                }
            }
        } else if scrollNum == 1 {
            ScrollView(.horizontal,showsIndicators: false) {
                HStack {
                    ForEach(0..<50) { index in
                        Rectangle()
                            .fill(Color.blue)
                            .frame(width: 300, height: 300)
                    }
                }
            }
        } else if scrollNum == 2 {
            ScrollView {
                VStack {
                    ForEach(0..<10) { index in
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack {
                                ForEach(0..<20) { index in
                                    RoundedRectangle(cornerRadius: 25.0)
                                        .fill(Color.white)
                                        .frame(width: 200, height: 150)
                                        .shadow(radius: 10)
                                        .padding()
                                }
                            }
                        }
                    }
                }
            }
        } else if scrollNum == 3 {
            ScrollView {
                LazyVStack {
                    ForEach(0..<10) { index in
                        ScrollView(.horizontal, showsIndicators: false) {
                            LazyHStack {
                                ForEach(0..<20) { index in
                                    RoundedRectangle(cornerRadius: 25.0)
                                        .fill(Color.white)
                                        .frame(width: 200, height: 150)
                                        .shadow(radius: 10)
                                        .padding()
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollViewBootcamp()
}
