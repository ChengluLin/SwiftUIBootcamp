//
//  ToggleBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2025/3/11.
//

import SwiftUI

struct ToggleBootcamp: View {
    
    @State var toggleIsOn = false
    
    var body: some View {
        VStack {
            
            HStack {
                Text("Status:")
                Text(toggleIsOn ? "On" : "Off")
            }
            .font(.title)
            
            Toggle(isOn: $toggleIsOn) {
                Text("Label")
            }
            .toggleStyle(SwitchToggleStyle(tint: Color.cyan))
            Spacer()
        }
        .padding(.horizontal, 100)
    }
}

#Preview {
    ToggleBootcamp()
}
