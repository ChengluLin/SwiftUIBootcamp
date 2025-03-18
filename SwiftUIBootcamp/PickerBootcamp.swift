//
//  PickerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2025/3/15.
//

import SwiftUI

struct PickerBootcamp: View {
    
    @State var selection: String = "1"
    @State private var selectedItem = 0
    
    let items = ["項目 1", "項目 2", "項目 3", "項目 4", "項目 5"]
    
    var body: some View {
        
        VStack {
            
            HStack
            {
                Text("你選擇了：")
                Text(items[selectedItem])
            }
            
            // Picker 組件
            Picker("選擇一個項目", selection: $selectedItem) {
                ForEach(0..<items.count, id: \.self) { index in
                    Text(items[index])
                        .font(.headline)
                        .foregroundStyle(.cyan)
                }
            }
            // 設置為滾輪樣式（可滑動）
            .pickerStyle(WheelPickerStyle())
            // 可選：限制 Picker 的高度
            .frame(height: 150)
//            .background(Color.cyan)
            
            // 顯示當前選中的項目
//            Text("你選擇了：\(items[selectedItem])")
                .padding()
        }
    }
}

#Preview {
    PickerBootcamp()
}
