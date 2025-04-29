//
//  StepperBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2025/4/24.
//

import SwiftUI

struct StepperBootcamp: View {
    
    @State var stepperValue: Int = 10
    @State var withIncrement: CGFloat = 0
    
    var body: some View {
        VStack {
            Stepper("Stepper: \(stepperValue)", value: $stepperValue)
                .padding(30)
            
            RoundedRectangle(cornerRadius: 25.0)
                .frame(width: 100 + withIncrement, height: 100)
            
            Stepper("Stepper 2") {
                // increment
                incrementWith(amount: 30)
            } onDecrement: {
                // decrement
                incrementWith(amount: -30)

            }
            .padding(30)
        }
    }
    
    func incrementWith(amount: CGFloat) {
        withAnimation(.easeInOut) {
            withIncrement += amount
        }
    }
}

#Preview {
    StepperBootcamp()
}
