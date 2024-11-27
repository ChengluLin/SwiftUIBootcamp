//
//  GridBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2024/11/27.
//

import SwiftUI

struct GridBootcamp: View {
    
    var gridNum: Int = 1
    
    let columns: [GridItem] = [
        GridItem(.fixed(50), spacing: nil, alignment: nil),
        GridItem(.fixed(100), spacing: nil, alignment: nil),
    ]
    
    let columns2:  [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 0, alignment: nil),
        GridItem(.flexible(), spacing: nil, alignment: nil),
        
    ]
    
    let columns3: [GridItem] = [
        GridItem(.adaptive(minimum: 50, maximum: 300), spacing: nil, alignment: nil),
        GridItem(.adaptive(minimum: 150, maximum: 300), spacing: nil, alignment: nil)
    ]
    
    var body: some View {
        
        if gridNum == 0 {
            LazyVGrid(columns: columns) {
                ForEach(0..<50) { index in
                    Rectangle()
                        .frame(height: 50)
                }
            }
        } else if gridNum == 1 {
            ScrollView {
                
                Rectangle()
                    .fill(Color.orange)
                    .frame(height: 400)
                
                LazyVGrid(columns: columns2,
                          alignment: .center,
                          spacing: 6,
                          pinnedViews: [.sectionHeaders],
                          content: {
                    Section(header: 
                                Text("Secetin 1")
                        .foregroundStyle(Color.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.blue)
                        .padding()
                    ) {
                        ForEach(0..<50) { index in
                            Rectangle()
                                .frame(height: 150)
                        }
                    }
                    
                    Section(header:
                                Text("Secetin 2")
                        .foregroundStyle(Color.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.red)
                        .padding()
                    ) {
                        ForEach(0..<50) { index in
                            Rectangle()
                                .fill(Color.green)
                                .frame(height: 150)
                        }
                    }
                })
            }
        }
    }
}

#Preview {
    GridBootcamp()
}
