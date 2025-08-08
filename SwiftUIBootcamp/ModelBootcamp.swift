//
//  ModelBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2025/8/5.
//

import SwiftUI

struct UserModel: Identifiable {
    var id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
}

struct ModelBootcamp: View {
    
    @State var users: [UserModel] = [
        UserModel(displayName: "Nick", userName: "Nick123", followerCount: 100),
        UserModel(displayName: "Emily", userName: "itsemily1995", followerCount: 55),
        UserModel(displayName: "Samantha", userName: "ninja", followerCount: 355),
        UserModel(displayName: "Chris", userName: "chris2009", followerCount: 88),
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(users) { user in
                    HStack(spacing: 15.0) {
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack(alignment: .leading, spacing: 0.0) {
                            Text(user.displayName)
                                .font(.headline)
                            Text("@\(user.userName)")
                                .foregroundStyle(.gray)
                                .font(.caption)
                        }
                        Spacer()
                        VStack {
                            
                        }
                    }
                    .padding(.vertical, 10)
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationTitle("Users")
        }
    }
}

#Preview {
    ModelBootcamp()
}
