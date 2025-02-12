//
//  AlertsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2025/2/6.
//

import SwiftUI

struct AlertsBootcamp: View {
        @State private var showAlert = false
    @State var alertType: MyAlerts? = nil
//    @State var alertTitle: String = ""
//    @State var alertMessage: String = ""
    @State var backgroundColor: Color = Color.yellow
    
    enum MyAlerts {
        case success
        case error
    }
    
    var body: some View {
        ZStack {
            backgroundColor.edgesIgnoringSafeArea(.all)
            
            VStack {
                Button("Button 1") {
                    alertType = .error
//                    alertTitle = "Error Uploading Video"
//                    alertMessage = "The video could not be uploaded"
                    showAlert.toggle()
                }
                Button("Button 2") {
                    alertType = .success
//                    alertTitle = "Successfully uploaded video"
//                    alertMessage = "Your video is now public!"
                    showAlert.toggle()
                }
                .alert(isPresented: $showAlert) {
                    getAlert()
                }
            }
        }
    }
    
    func getAlert() -> Alert {
        switch alertType {
        case .success:
            return Alert(title: Text("This was a success!"), message: nil, dismissButton: .default(Text("OK"), action: {
                backgroundColor = .green
            }))

        case .error:
            return Alert(title: Text("There was an error!"))
        default:
            return Alert(title: Text("ERROR"))
        }
        
//        return Alert(
//            title: Text(alertTitle),
//            message: Text(alertMessage),
//            dismissButton: .default(Text("OK")))
//        return Alert(
//            title: Text("This is the title"),
//            message: Text("Here we will describe the error."),
//            primaryButton: .destructive(Text("Delete"), action: {
//                backgroundColor = .red
//            }),
//            secondaryButton: .cancel())
    }
}

#Preview {
    AlertsBootcamp()
}
