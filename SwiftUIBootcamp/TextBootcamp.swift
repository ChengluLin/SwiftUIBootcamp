//
//  TextBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2024/10/18.
//

import SwiftUI

struct TextBootcamp: View {
    var bool: Bool = true
    
    var body: some View {
        if bool == true {
            Text("taipei".capitalized)
            Text("Hello, World! This is the Seiftful Thinking Bootcamp.".uppercased())
                .font(.body)
                .fontWeight(.heavy)
                .bold()
                .underline(true, color: Color.red)
                .italic()
                .strikethrough(true, color:  Color.green)
        } else {
            Text("Hello, World! This is the Seiftful Thinking Bootcamp.".lowercased())
//                .font(.system(size: 24, weight: .semibold, design: .serif))
                .baselineOffset(-15)
                .kerning(10)
                .multilineTextAlignment(.center)
                .foregroundStyle(.blue)
                .frame(width: 200, height: 200, alignment: .center)
                .minimumScaleFactor(0.1)
            
        }
    }
}

#Preview {
    TextBootcamp()
}
