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
        NavigationView {
            List {
                Section(
                    header: Text("Fruits")) {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                    }
                    .onDelete(perform: deleate)
                    .onMove(perform: move)
                }
            }
            .navigationTitle("All Inboxes")
            .navigationBarItems(
                leading: EditButton(),
                trailing: addButton
                   
                    
            )
        }
    }
    
    var addButton: some View {
        Button("Add", action: {
            add()
        })
    }
    
    func deleate(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int) {
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func add() {
        fruits.append("Cocount")
    }
}

#Preview {
    ListBootcamp()
}
