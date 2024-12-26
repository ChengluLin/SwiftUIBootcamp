//
//  TransitionBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2024/12/24.
//

import SwiftUI

struct TransitionBootcamp: View {
    
    @State var showView: Bool = false
    
    var transitionNum: Int = 1
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            VStack {
                Button("Button") {
                    withAnimation(.easeInOut) {
                        showView.toggle()

                    }
                }
                Spacer()
            }
            
            if transitionNum == 0 {
                if showView {
                    RoundedRectangle(cornerRadius: 30)
                        .frame(height: UIScreen.main.bounds.height * 0.5)
    //                    .transition(.slide) //左側滑入
    //                    .transition(.move(edge: .bottom)) //下方滑入
    //                    .transition(AnyTransition.opacity.animation(.easeInOut)) // 漸顯漸失
                        .transition(AnyTransition.scale.animation(.easeInOut)) // 中心點縮放開

    //                    .animation(.easeInOut)
                }
            } else if transitionNum == 1 {
                if showView {
                    RoundedRectangle(cornerRadius: 30)
                        .frame(height: UIScreen.main.bounds.height * 0.5)        .transition(.asymmetric(
                            insertion: .move(edge: .bottom),
                            removal: AnyTransition.opacity.animation(.easeInOut)
                        ))
                }
            }

        }
        .edgesIgnoringSafeArea(.bottom)
       
    }
}

#Preview {
    TransitionBootcamp()
}
