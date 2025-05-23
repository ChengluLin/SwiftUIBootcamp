//
//  ActionsheetBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2025/2/14.
//

import SwiftUI

struct ActionsheetBootcamp: View {
    
    @State var showActrionSheet: Bool = false
    @State var actionSheetOption: ActionSheetOptions = .isOtherPost
    
    enum ActionSheetOptions {
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                Button {
                    actionSheetOption = .isMyPost
                    showActrionSheet.toggle()
                } label: {
                    Image(systemName: "ellipsis")
                }
                .accentColor(.primary)
            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }

        .actionSheet(isPresented: $showActrionSheet,content: getActionSheet)
    }
    
    func getActionSheet() -> ActionSheet {
        
            let shareButton: ActionSheet.Button = .default(Text("Share")) {
                // add code to share post
            }
            let reportButton: ActionSheet.Button = .destructive(Text("Report")) {
                // add code to report this post
            }
            let deleteButton: ActionSheet.Button = .destructive(Text("Delete")) {
                // add code to delete this post
            }
            let cancelButton: ActionSheet.Button = .cancel()
            let title = Text("What woud you like to do?")
            
            switch actionSheetOption {
            case .isOtherPost:
                return ActionSheet(title: title,
                                   message: nil,
                                   buttons: [shareButton, reportButton, cancelButton])
            case .isMyPost:
                return ActionSheet(title: title,
                                   message: nil,
                                   buttons: [shareButton, reportButton, deleteButton, cancelButton])
            }
        
        
        
        
//        return ActionSheet(title: Text("This is the title!"))
        
//        let button1: ActionSheet.Button = .default(Text("Default"))
//        let button2: ActionSheet.Button = .destructive(Text("Destructive"))
//        let button3: ActionSheet.Button = .cancel()
//        
//        return ActionSheet(
//            title: Text("This is the title!"),
//            message: Text("This is message"),
//            buttons: [button1, button2, button3])
    }
}

#Preview {
    ActionsheetBootcamp()
}
