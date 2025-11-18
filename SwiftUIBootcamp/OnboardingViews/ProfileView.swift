//
//  ProfileView.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2025/10/30.
//

import SwiftUI

struct ProfileView: View {
    
    // app storage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        VStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            Text(currentUserName ?? "Your name here")
            Text("This user is \(currentUserAge ?? 0) years old!")
            Text("Their gender is \(currentUserGender ?? "unknown")")
            
            Text("SIGN OUT")
                .foregroundStyle(.white)
                .font(.headline)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(Color.black)
                .cornerRadius(10)
                .onTapGesture {
                    signOut()
                }
        }
                .font(.title)
                .foregroundStyle(.purple)
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                .shadow(radius: 10)
    }
    
    
    func signOut() {
        currentUserName = nil
        currentUserAge = nil
        currentUserGender = nil
        withAnimation(.spring()) {
            currentUserSignedIn = false
        }
    }
}

#Preview {
    ProfileView()
}
