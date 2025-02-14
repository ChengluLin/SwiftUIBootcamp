//
//  ActionsheetBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2025/2/14.
//

import SwiftUI

struct ActionsheetBootcamp: View {
    
    @State var showActrionSheet: Bool = false
    
    var body: some View {
        Button("Click me") {
            showActrionSheet.toggle()
        }
        .actionSheet(isPresented: $showActrionSheet,content: getActionSheet)
    }
    
    func getActionSheet() -> ActionSheet {
        
//        return ActionSheet(title: Text("This is the title!"))
        
        let button1: ActionSheet.Button = .default(Text("Default"))
        let button2: ActionSheet.Button = .destructive(Text("Destructive"))
        let button3: ActionSheet.Button = .cancel()
        
        return ActionSheet(
            title: Text("This is the title!"),
            message: Text("This is message"),
            buttons: [button1, button2, button3])
    }
}

#Preview {
    ActionsheetBootcamp()
}
