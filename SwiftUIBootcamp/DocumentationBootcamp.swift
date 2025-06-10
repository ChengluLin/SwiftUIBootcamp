//
//  DocumentationBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2025/6/3.
//

import SwiftUI

struct DocumentationBootcamp: View {
    
    @State var data: [String] = [
        "Apple", "Orange", "Bananas"
    ]
    
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Hello")
                ForEach(data, id: \.self) { name in
                    Text(name)
                        .font(.headline)
                }
            }
            .navigationTitle("Documentation Bootcamp")
            .navigationDocument(<#T##url: URL##URL#>)
        }
    }
}

#Preview {
    DocumentationBootcamp()
}
