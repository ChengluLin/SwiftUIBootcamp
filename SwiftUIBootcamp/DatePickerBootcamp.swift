//
//  DatePickerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2025/4/9.
//

import SwiftUI

struct DatePickerBootcamp: View {
    
    @State var selectedDate: Date = Date()
    
    var body: some View {
        DatePicker("Selec a Date", selection: $selectedDate)
    }
}

#Preview {
    DatePickerBootcamp()
}
