//
//  ColorPickerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2025/4/1.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    
    @State var backgroundColor: Color = .green
    
    var body: some View {
        ZStack {
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            ColorPicker("Select a color",
                        selection: $backgroundColor,
                        supportsOpacity: true)
            .padding()
            .background(Color.black)
            .cornerRadius(10)
            .foregroundStyle(.white)
            .font(.headline)
            .padding(50)
        }
    }
}

#Preview {
    ColorPickerBootcamp()
}
