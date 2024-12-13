//
//  BindingBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2024/12/11.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var title: String = "Title"
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea(.all)
            
            VStack {
                Text(title)
                ButtonView(backgroundColorInBtnView: $backgroundColor, title: $title)
            }
        }
    }
}

struct ButtonView: View {

    @Binding var backgroundColorInBtnView: Color
    @State var buttonColor: Color = Color.blue
    @Binding var title : String
    
    var body: some View {
        Button {
            backgroundColorInBtnView = Color.orange
            buttonColor = Color.pink
            title = "Clicked"
        } label: {
            Text("Button")
                .foregroundStyle(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .background(Color.blue)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
        }
    }
}

#Preview {
    BindingBootcamp()
}
