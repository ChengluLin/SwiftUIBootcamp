//
//  PickerBootcamp2.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2025/3/15.
//

import SwiftUI

struct PickerBootcamp2: View {
    @State private var selectedOption = 0
        let options = ["Option 1", "Option 2", "Option 3", "Option 4"]

        var body: some View {
            VStack {
                // 使用 Menu 來模擬 Picker，這樣可以更好地控制外觀
                Menu {
                    // 將 Picker 的內容放入 Menu 中
                    Picker("Picker 1", selection: $selectedOption) {
                        ForEach(0..<options.count, id: \.self) { index in
                            HStack {
                                Text(options[index])
                                Image(systemName: "heart.fill")
                                    .tag(index)
                            }
                        }
                    }
                    .pickerStyle(.menu) // 確保使用 menu 樣式
                } label: {
                    // 自訂顯示的標籤，這裡不顯示箭頭
                    Text(options[selectedOption])
                        .foregroundColor(.blue) // 設置文字顏色為藍色，與圖片一致
                }

                // 顯示當前選中的選項
                Text("You selected: \(options[selectedOption])")
                    .padding()
            }
            .padding()
        }
    }

#Preview {
    PickerBootcamp2()
}
