//
//  IntroView.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2025/9/23.
//

import SwiftUI

struct IntroView: View {
    
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack {
            // background
            RadialGradient(
                gradient: Gradient(colors: [Color.cyan, Color.blue]),
                center: .topLeading,
                startRadius: 400,
                endRadius: UIScreen.main.bounds.height)
            .ignoresSafeArea()
            
            if currentUserSignedIn {
                Text("Profile View")
            } else {
                Text("Onboarding View")
            }
            
            // if user is signed in
            // profile view
            // else
            // onboarding view
        }
    }
}

#Preview {
    IntroView()
}
