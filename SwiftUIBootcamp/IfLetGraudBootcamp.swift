//
//  IfLetGraudBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2025/7/8.
//

import SwiftUI

struct IfLetGraudBootcamp: View {
    
    @State var currentUserID: String? = "123"
    @State var displyText: String? = nil
    @State var isLoading: Bool = false
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Here we are practicing safe coding!")
                
                if let text = displyText {
                    Text(text)
                        .font(.title)
                }
                
//                Text(displyText!)
//                    .font(.title)
                
                if isLoading {
                    ProgressView()
                }
                
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear {
                loadData()
            }
        }
    }
    
    func loadData() {
        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displyText = "This is the new data!: \(userID)"
                isLoading = false
            }
        } else {
            displyText = "Error. There is no User ID!"
        }
    }
    
    func loadData2() {
        guard let userID = currentUserID else {
            displyText = "Error. There is no User ID!"
            return
        }
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            displyText = "This is the new data!: \(userID)"
            isLoading = false
        }
    }
}

#Preview {
    IfLetGraudBootcamp()
}
