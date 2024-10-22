//
//  TEst.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2024/10/22.
//

import SwiftUI
import Combine

class ActionPublisher: ObservableObject {
    var buttonPressed = PassthroughSubject<Void, Never>()
}

struct Combine: View {
    @StateObject private var actionPublisher = ActionPublisher()
    
    var body: some View {
        VStack{
            Button(action: {
                actionPublisher.buttonPressed.send()
            }) {
                Text("Button")
            }
        }
        .onReceive(actionPublisher.buttonPressed) {
            print("tap button")
        }
    }
}

#Preview {
    Combine()
}
