//
//  SliderBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2025/4/29.
//

import SwiftUI

struct SliderBootcamp: View {
    
    @State var sliderValue: Double = 3
    @State var color: Color = .red
    
    var body: some View {
        VStack {
            Text("Rating")
            Text(
                String(format: "%.1f", sliderValue)
            )
            .foregroundStyle(color)
            //            Text("\(sliderValue)")
            //            Slider(value: $sliderValue, in: 1...5)
            //            Slider(value: $sliderValue, in: 1...5, step: 1.0)
            Slider(
                value: $sliderValue,
                in: 1...5,
                step: 1.0,
                onEditingChanged: { (_) in
                    color = .green
                },
                minimumValueLabel:
                    Text("1")
                    .font(.largeTitle)
                    .foregroundStyle(.orange)
                ,
                maximumValueLabel: Text("5"),
                label: {
                    Text("Title")
                })
            .accentColor(.red)
        }
    }
}

#Preview {
    SliderBootcamp()
}
