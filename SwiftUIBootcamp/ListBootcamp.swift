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
    
    @State var veggies: [String] = [
        "tomato", "potato", "carrot"
    ]
    
    var body: some View {
        NavigationView {
            List {
                Section(
                    header:
                        HStack {
                            Text("Fruits")
                            Image(systemName: "flame.fill")
                        }
                        .font(.title)
                        .foregroundStyle(.orange)
                ) {
                    ForEach(fruits, id: \.self) { fruit in
                        Text(fruit.capitalized)
                            .font(.caption)
                            .foregroundStyle(.white)
                            .padding(.vertical)
//                            .frame(maxWidth: .infinity, maxHeight: .infinity)
//                            .background(Color.pink)
                            
                    }
                    .onDelete(perform: deleate)
                    .onMove(perform: move)
                    .listRowBackground(Color.cyan)
                }
                
                Section(header: Text("Veggies").headerStyle()) {
                    ForEach(veggies, id: \.self) { veggies in
                        Text(veggies.capitalized)
                        
                    }
                }
            }
            
            .navigationTitle("All Inboxes")
            .navigationBarItems(
                leading: EditButton(),
                trailing: addButton
            )
            .accentColor(.red)
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

struct HeaderModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.cyan) // 統一顏色
            .font(.headline)        // 統一字體樣式
    }
}

extension View {
    func headerStyle() -> some View {
        self.modifier(HeaderModifier())
    }
}
