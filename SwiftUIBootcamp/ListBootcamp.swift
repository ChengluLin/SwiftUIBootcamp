//
//  ListBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2025/1/13.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits: [String] = [
        "apple", "orange", "banana", "peach"
    ]
    
    var body: some View {
        List {
            Section(header: Text("Fruits")) {
                ForEach(fruits, id: \.self) { fruit in
                    Text(fruit.capitalized)
                    
                }
                .onDelete { indexSet in
                    fruits.remove(atOffsets: indexSet)
                }
            }
            

        }
    }
}

#Preview {
    ListBootcamp()
}
