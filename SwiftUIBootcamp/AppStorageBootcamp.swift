//
//  AppStorageBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2025/9/19.
//

import SwiftUI

struct AppStorageBootcamp: View {
    
//    @State var currentUserName: String?
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20, content: {
            Text(currentUserName ?? "Add Name Here")
            
            if let name = currentUserName {
                Text(name)
            }
            
            Button("Save".uppercased()) {
                let name = "Emily"
                currentUserName = name
//                UserDefaults.standard.set(name, forKey: "name")
            }
        })
//        .onAppear() {
//            currentUserName = UserDefaults.standard.string(forKey: "name")
//        }
    }
}

#Preview {
    AppStorageBootcamp()
}
