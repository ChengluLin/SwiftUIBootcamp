//
//  ButtonsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2024/12/2.
//

import SwiftUI

struct ButtonsBootcamp: View {
    
    var buttonsNum: Int = 0
    
    @State var title: String = "This in my title"
    
    var body: some View {
        if buttonsNum == 0 {
            VStack {
                Text(title)
                
                Button("Press Me!") {
                    self.title = "Button Was Pressed"
                }
                .tint(.red)
                
                Button(action: {
                    self.title = "Button #2 was pressed"
                }, label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .padding()
                        .padding(.horizontal, 20)
                        .background(
                            Color.blue
                                .clipShape(RoundedRectangle(cornerRadius: 30))
                                .shadow(radius: 10)
                            
                        )
                })
                
                Button(action: {
                    self.title = "Button #3"
                }, label: {
                    Circle()
                        .fill(Color.white)
                        .frame(width: 75, height: 75)
                        .shadow(radius: 10)
                        .overlay(
                            Image(systemName: "heart.fill")
                                .font(.largeTitle)
                                .foregroundStyle(Color.red)
                        )

                })
                
                Button(action: {
                    self.title = "Button #4"
                }, label: {
                    Text("Finish".uppercased())
                        .font(.caption)
                        .bold()
                        .foregroundStyle(.gray)
                        .padding()
                        .padding(.horizontal, 10)
                        .background(
                            Capsule()
                                .stroke(Color.gray, lineWidth: 2.0)
                        )
                })
            }
        } else if buttonsNum == 1 {

        }
    }
}

#Preview {
    ButtonsBootcamp()
}
