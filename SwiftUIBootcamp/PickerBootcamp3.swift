//
//  PickerBootcamp2.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2025/3/15.
//

import SwiftUI

struct PickerBootcamp3: View {
    @State private var selectedOption = "Most Recent"
        let filterOptions = ["Option 1", "Option 2", "Option 3", "Option 4"]


    var body: some View {
        Picker(
            selection: $selectedOption,
            label: Text("Picker"),
            content: {
                ForEach(filterOptions.indices) { index in
                    Text(filterOptions[index])
                        .tag(filterOptions[index])
                }
            })
        .pickerStyle(SegmentedPickerStyle())
    }
    }
#Preview {
    PickerBootcamp3()
}
