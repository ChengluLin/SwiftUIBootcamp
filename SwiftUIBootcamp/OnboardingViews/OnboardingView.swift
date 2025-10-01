//
//  OnboardingVIew.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2025/9/23.
//

import SwiftUI

struct OnboardingView: View {
    
    // Onboarding states:
    /*
     0 - Welcom screen
     1 - Add name
     2 - Add age
     3 - Add gender
     */
    
    @State var onboardingState: Int = 0
    
    var body: some View {
        ZStack {
            // content
            Color.purple
//                .ignoresSafeArea()
            // buttons
            VStack {
                Spacer()
                bottomButton
               
            }
            .padding(30)
        }
    }
    
    private var bottomButton: some View {
        Text("Sign in")
                   .font(.headline)
                   .foregroundStyle(.purple)
                   .frame(height: 55)
                   .frame(maxWidth: .infinity)
                   .background(Color.white)
                   .cornerRadius(10)
                   .padding(.horizontal, 30) // 加上左右間距
                   .onTapGesture {
                       // 按鈕點擊後的動作
                   }
    }
}

#Preview {
    OnboardingView()
//        .background(Color.purple)
}

// MARK: COMPONENTS

extension OnboardingView {
    
}
