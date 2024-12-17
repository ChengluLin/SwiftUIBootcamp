//
//  TernaryBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2024/12/17.
//

import SwiftUI

struct TernaryBootcamp: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack {
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
            }
            
            Text(isStartingState ? "Starting State!!" : "Ending State.")
            
            RoundedRectangle(cornerRadius: isStartingState ? 25 : 0)
                .fill(isStartingState ? Color.red : Color.blue)
                .frame(
                    width: isStartingState ? 200 : 50,
                    height: isStartingState ? 400 : 50)
            
            Spacer()
        }
    }
}

#Preview {
    TernaryBootcamp()
}
