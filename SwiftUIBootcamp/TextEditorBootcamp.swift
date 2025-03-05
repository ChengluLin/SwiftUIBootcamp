//
//  TextEditorBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2025/3/5.
//

import SwiftUI

struct TextEditorBootcamp: View {
    
    @State var textEditorText: String = ""
    
    var body: some View {
        NavigationView {
            VStack {
                TextEditor(text: $textEditorText)
                Button(action: {
                    
                }, label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(10)
                })
            }
        }
    }
}

#Preview {
    TextEditorBootcamp()
}
