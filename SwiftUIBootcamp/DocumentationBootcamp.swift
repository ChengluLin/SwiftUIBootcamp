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
    

    
    // NICK - Working copy - things to do:
    /*
     // 1) Fix title
     // 2) Fix alert
     // 3) something else
     
     */
    
    var body: some View {
        NavigationView {
            ZStack {
                // background
                Color.red.ignoresSafeArea()
                
                // forgeround
                foregroundLayer
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
    }
    
    /// This is the foreground layer that holds a scrollView.
    private var foregroundLayer: some View {
        ScrollView {
            Text("Hello")
            ForEach(data, id: \.self) { name in
                Text(name)
                    .font(.headline)
            }
        }
    }
    
    // MARK: FUNCTION
    
    /// Gets an alert with a specified title.
    ///
    /// This function creates and returns an alert immediately. The alert will have a title base on  the text parameter but it will NOT have a message.
    /// ```
    /// getAlert(text: "Hi") -> Alert(title: Text("Hi"))
    /// ```
    ///
    /// - Warning: There is no additional message in the Alert.
    /// - Parameter text: This is the title for the alert.
    /// - Returns: Returns an alert with a title.
    func getAlert(text: String) -> Alert {
        return Alert(title: Text(text))
    }
}

#Preview {
    DocumentationBootcamp()
}
