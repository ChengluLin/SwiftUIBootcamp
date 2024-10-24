//
//  ColorsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2024/10/22.
//

import SwiftUI

struct ColorsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(
//                Color.primary
//                Color(UIColor.secondarySystemBackground)
                Color("CustomColor")
            )
            .frame(width: 300, height: 200)
            .shadow(color: Color("CustomColor").opacity(0.7), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 20, y: 20)
    }
}

#Preview {
    ColorsBootcamp()
}
