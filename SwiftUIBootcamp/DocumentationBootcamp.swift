//
//  DocumentationBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2025/6/3.
//

import SwiftUI

struct DocumentationBootcamp: View {
    
    // MARK: PROPERTIES
    
    @State var data: [String] = [
        "Apple", "Orange", "Bananas"
    ]
    
    @State var showAlert: Bool = false
    
    // MARK: BODY
    
    // Working copy - things to do:
    // 1) Fix title
    // 2) Fix alert
    
    var body: some View {
        NavigationView {
            ScrollView {
                Text("Hello")
                ForEach(data, id: \.self) { name in
                    Text(name)
                        .font(.headline)
                }
            }
            .navigationTitle("Documentation Bootcamp")
            .navigationBarItems(trailing:
                                    Button("ALERT", action: {
                showAlert.toggle()
            })
            )
            .alert(isPresented: $showAlert) {
                getAlert(text: "This is the alert!")
            }
        }
    }
    
    // MARK: FUNCTION
    
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

#Preview {
    DocumentationBootcamp()
}
