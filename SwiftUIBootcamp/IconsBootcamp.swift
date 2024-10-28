//
//  IconsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2024/10/24.
//

import SwiftUI

struct IconsBootcamp: View {
    var iconBool: Bool = false
    
    var body: some View {
        if iconBool == true {
            Image(systemName: "heart.fill")
                .resizable()
                .aspectRatio(contentMode: .fit)
            //            .font(.largeTitle)
            //            .font(.system(size: 200))
                .foregroundStyle(Color.red)
                .frame(width: 200, height: 200)
        } else {
            Image(systemName: "person.fill.badge.plus")
                .renderingMode(.original)
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200)
                
//                .clipped()
        }
        
        
        
    }
}

#Preview {
    IconsBootcamp()
}
