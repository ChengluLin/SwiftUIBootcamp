//
//  AnimationsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2024/12/18.
//

import SwiftUI

struct AnimationsBootcamp: View {
    
    @State var isAnimaed: Bool = false
    
    var body: some View {
        VStack {
            Button("Button") {
                // 動畫觸發可放這邊或下方RoundedRectangle裡面
//                withAnimation(
//                    Animation
//                        .default
//                        .repeatForever()
//                ) {
                    isAnimaed.toggle()
//                }
            }
            
            Spacer()
            RoundedRectangle(cornerRadius: isAnimaed ? 50 : 25)
                .fill(isAnimaed ? Color.red : Color.green)
                .frame(
                    width: isAnimaed ? 100 : 300,
                    height: isAnimaed ? 100 : 300)
                .rotationEffect(Angle(degrees: isAnimaed ? 360 : 0))
                .offset(y: isAnimaed ? 300 : 0)
                .animation(Animation.default.repeatForever(), value: isAnimaed)// 觸發動畫
            
            Spacer()

        }
    }
}

#Preview {
    AnimationsBootcamp()
}
