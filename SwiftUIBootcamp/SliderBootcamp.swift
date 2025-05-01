//
//  SliderBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2025/4/29.
//

import SwiftUI

struct SliderBootcamp: View {
    
    @State var sliderValue: Double = 3
    
    var body: some View {
        VStack {
            Text("Rating")
            Text("\(sliderValue)")
//            Slider(value: $sliderValue, in: 1...5)
            Slider(value: $sliderValue, in: 1...5, step: 1.0)
                .accentColor(.red)
        }
    }
}

#Preview {
    SliderBootcamp()
}
