//
//  ObservableObjectBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2024/10/23.
//

import SwiftUI

// 定義協議
protocol ButtonActionDelegate {
    func didPressButton()
}

// 模擬的 ViewModel 或類似代理的對象
class ButtonActionHandler: ObservableObject {
    var delegate: ButtonActionDelegate?
    
    // 可觀察的屬性，用於更新 SwiftUI 界面
    @Published var buttonState: Bool = true
//
    func buttonPressed() {
        delegate?.didPressButton()
        buttonState = !buttonState // 按鈕狀態更新，觸發界面更新
    }
}

// SwiftUI 視圖
struct ObservableObjectBootcamp: View {
    
    // init ViewModel
    @StateObject private var actionHandler = ButtonActionHandler()
    
    var body: some View {
        VStack {
            Text("按鈕狀態: \(actionHandler.buttonState == true ? "確認": "取消")") // 動態顯示按鈕狀態
            Button(action: {
                actionHandler.buttonPressed()
            }) {
                Text("按鈕")
            }
        }
        .padding()
        .onAppear {
            actionHandler.delegate = self
        }
    }
}

extension ObservableObjectBootcamp: ButtonActionDelegate {
    // ButtonActionDelegate 協議方法
    func didPressButton() {
        print("按鈕被按下")
    }
}

#Preview {
    ObservableObjectBootcamp()
}
