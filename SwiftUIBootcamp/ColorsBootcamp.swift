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
    }
}

#Preview {
    ColorsBootcamp()
}
