//
//  PaddingAndSpacerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2024/11/13.
//

import SwiftUI

struct PaddingBootcamp: View {
    var paddingNum: Int = 3
    var body: some View {
        if paddingNum == 0 {
            Text("Hello, World! This is fun.")
                .background(Color.yellow)
    //            .frame(width: 300, height: 100)
    //            .padding() //依照String預留空間
                .padding(.all, 10)
                .padding(.vertical, 40)
                .padding(.bottom, 20)
                .padding(.vertical, 30)
                .background(Color.blue)
        } else if paddingNum == 1 {
            Text("Hello, World! This is fun.")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading) // 填滿螢幕：並靠左
                .background(Color.red)
                .padding(.leading, 40)
        } else if paddingNum == 2 {
            VStack(alignment: .leading) {
                Text("Hello, World! This is fun.")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text("This is the description of what we will do on this screen. It is multile lines and we will align the text to the leading edge.")
            }
            .background(Color.blue)
            .padding()
            .background(Color.red)
            .padding(.horizontal, 50)
            .background(Color.yellow)
        }else if paddingNum == 3 {
            VStack(alignment: .center) {
                Text("Hello, World! This is fun.")
                    .frame(maxWidth: .infinity)
//                    .font(.largeTitle)
                    .font(.system(size: 30))
                    .fontWeight(.semibold)
                    .padding(.bottom, 20)
                Text("This is the description of what we will do on this screen. It is multile lines and we will align the text to the leading edge.")
            }
            .padding()
            .padding(.vertical, 30)
            .background(
                Color.white
//                    .cornerRadius(10) 將被棄用
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .shadow(
                        color: Color.black.opacity(0.7),
                        radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/
                    )
                    .padding(.horizontal, 10)
            )
        }
       
    }
}

#Preview {
    PaddingBootcamp()
}
