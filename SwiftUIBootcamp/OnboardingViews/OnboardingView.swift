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
//    let transiton: AnyTransition = .asymmetric(
//        insertion: .move(edge: .trailing),
//        removal: .move(edge: .leading))
    let transiton: AnyTransition = .asymmetric(
        insertion: .slide,
        removal: .opacity)
    // onboarding inputs
    @State var name: String = ""
    @State var age: Double = 50
    @State var gender: String = ""
    
    // for the alert
    @State var alertTitle: String = ""
    @State var showAlert: Bool = false
    
    // app storage
    @AppStorage("name") var currentUserName: String?
    @AppStorage("age") var currentUserAge: Int?
    @AppStorage("gender") var currentUserGender: String?
    @AppStorage("signed_in") var currentUserSignedIn: Bool = false


    
    var body: some View {
        ZStack {
            // content
            Color.purple
                .ignoresSafeArea()
            //                .ignoresSafeArea()
            ZStack {
                switch onboardingState {
                case 0:
                    welcomeSection
                        .transition(transiton)
                case 1:
                    addNameSection
                        .transition(transiton)
                case 2:
                    addAgeSection
                        .transition(transiton)
                case 3:
                    addGenderSection
                        .transition(transiton)
                default:
                    EmptyView()
//                    RoundedRectangle(cornerRadius: 25)
//                        .foregroundStyle(.green)
                }
            }
            
            // buttons
            VStack {
                Spacer()
                bottomButton
                
            }
            .padding(30)
        }
        .alert(isPresented: $showAlert) {
            return Alert(title: Text(alertTitle))
        }
    }
}

#Preview {
    OnboardingView()
            .background(Color.purple)
}

// MARK: COMPONENTS

extension OnboardingView {
    
    private var bottomButton: some View {
        Text(onboardingState == 0 ? "Sign in" :
                onboardingState == 3 ? "FINISH" : "NEXT"
        )
            .font(.headline)
            .foregroundStyle(.purple)
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .background(Color.white)
            .cornerRadius(10)
            .padding(.horizontal, 30) // 加上左右間距
            .onTapGesture {
                handleNextButtonPress()
            }
    }
    
    private var welcomeSection: some View {
        VStack(spacing: 40) {
            Spacer()
            Image(systemName: "heart.text.square.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundStyle(.white)
            Text("Find your match")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                .overlay(
                    Capsule(style: .continuous)
                        .frame(height: 3)
                        .offset(y: 5)
                        .foregroundStyle(.white)
                    , alignment: .bottom
                )
            Text("This the #1 app for finding your match online! In this tutorial we are practicing using AppStorage and other SwiftUI techniques.")
                .fontWeight(.medium)
                .foregroundStyle(.white)
            Spacer()
            Spacer()
        }
        .multilineTextAlignment(.center)
        .padding(30)
    }
    
    
    private var addNameSection: some View {
        VStack(spacing: 20) {
            Spacer()
            Text("What.s your name?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            TextField("Your name here...", text: $name)
                .font(.headline)
                .frame(height: 55)
                .padding(.horizontal)
                .background(.white)
                .cornerRadius(10)
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    private var addAgeSection: some View {
        VStack(spacing: 20) {
            Spacer()
            Text("What.s your age?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            Text("\( String(format: "%.0f", age))")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            Slider(value: $age, in: 18...100, step: 1)
                .accentColor(.white)
            Spacer()
            Spacer()
        }
        .padding(30)
    }
    
    
    private var addGenderSection: some View {
        VStack(spacing: 20) {
            Spacer()
            Text("What.s your gender?")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
            
            //            Picker(selection: $gender) {
            //                Text("Male").tag("Male")
            //                Text("Female").tag("Female")
            //                Text("Non-Binary").tag("Non-Binary")
            //
            //            } label: {
            //                Text("Selecxt a gender")
            //                    .font(.headline)
            //                    .foregroundStyle(.purple)
            //                    .frame(height: 55)
            //                    .frame(maxWidth: .infinity)
            //                    .background(Color.white)
            //                    .cornerRadius(10)
            //            }
            Menu {
                Picker(selection: $gender, label: EmptyView()) {
                    Text("Male").tag("Male")
                    Text("Female").tag("Female")
                    Text("Non-Binary").tag("Non-Binary")
                }
            } label: {
                Text(gender.isEmpty ? "Select a gender" : gender)
                    .font(.headline)
                    .foregroundStyle(.purple)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.white)
                    .cornerRadius(10)
            }
            Spacer()
            Spacer()
        }
        .padding(30)
    }
}


// MARK: FUNCTIONS

extension OnboardingView {
    
    func handleNextButtonPress() {
        // CHECK INPUTS
        switch onboardingState {
        case 1:
            guard name.count >= 3 else {
                showAlert(title: "Your name must be at least 3 characters long!")
                return
            }
        case 3:
            guard gender.count > 1 else {
                showAlert(title: "Please select a gender before moveing forward!")
                return
            }
        default:
            break
        }
        
        // GO TO NEXT SECTION
        if onboardingState == 3 {
            singIn()
        } else {
            withAnimation(.spring()) {
//                onboardingState += 1
                onboardingState = min(onboardingState + 1, 3)
            }
        }
    }
    
    func singIn() {
        currentUserName = name
        currentUserAge = Int(age)
        currentUserGender = gender
        withAnimation(.spring()) {
            currentUserSignedIn = true
        }
    }
    
    
    func showAlert(title: String) {
        alertTitle = title
        showAlert.toggle()
    }
    
    
    
    
}
