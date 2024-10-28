//
//  ImageBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2024/10/28.
//

import SwiftUI

struct ImageBootcamp: View {
    var imageBool: Bool = false
    var body: some View {
        if imageBool == true {
            Image("cake")
                .resizable()
    //            .aspectRatio(contentMode: .fit)
    //            .scaledToFit()
                .scaledToFill()
                .frame(width: 300, height: 200)
    //            .clipped()
    //            .clipShape(RoundedRectangle(cornerRadius: 30))
    //            .cornerRadius(150)
                .clipShape(
                    Circle()
    //                RoundedRectangle(cornerRadius: 30)
    //                Ellipse()
                )
        } else {
            Image("3")
                .renderingMode(.template)// 可變更圖片整體顏色
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 200)
                .foregroundStyle(.blue)
        }
       
    }
}

#Preview {
    ImageBootcamp()
}
