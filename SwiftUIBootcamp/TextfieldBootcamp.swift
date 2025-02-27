//
//  TextfieldBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2025/2/25.
//

import SwiftUI

struct TextfieldBootcamp: View {
    
    @State var textFieldText: String = ""
    
    var body: some View {
        TextField("Type something here...", text: $textFieldText)
//            .textFieldStyle(RoundedBorderTextFieldStyle())
            .background(Color.gray)
    }
}

#Preview {
    TextfieldBootcamp()
}
