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
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        let attributes: [NSAttributedString.Key: Any] = [
            .foregroundColor: UIColor.white
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }


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
        .background(Color.cyan)
    }
    }
#Preview {
    PickerBootcamp3()
}
