//
//  AlertsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2025/2/6.
//

import SwiftUI

struct AlertsBootcamp: View {
    
    @State private var showAlert = false
    @State var backgroundColor: Color = Color.yellow
    
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            Button("Click here") {
                showAlert.toggle()
            }
            .alert(isPresented: $showAlert) {
                Alert(
                    title: Text("This is the title"),
                    message: Text("Here we will describe the error."),
                    primaryButton: .destructive(Text("Delete"), action: {
                        
                    }),
                    secondaryButton: .cancel())
                //            Alert(title: Text("There was an error!"))
            }
        }
    }
}

#Preview {
    AlertsBootcamp()
}
