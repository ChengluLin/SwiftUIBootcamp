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
    
    @State var showAlert: Bool = false
    
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
    
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

#Preview {
    DocumentationBootcamp()
}
