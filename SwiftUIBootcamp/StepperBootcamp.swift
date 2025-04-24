//
//  StepperBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2025/4/24.
//

import SwiftUI

struct StepperBootcamp: View {
    
    @State var stepperValue: Int = 10
    
    var body: some View {
        Stepper("Stepper: \(stepperValue)", value: $stepperValue)
            .padding(30)
    }
}

#Preview {
    StepperBootcamp()
}
