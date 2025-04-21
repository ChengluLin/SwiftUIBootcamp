//
//  DatePickerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2025/4/9.
//

import SwiftUI

struct DatePickerBootcamp: View {
    
    @State var selectedDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2025)) ?? Date()
    let endingDate: Date = Date()
    
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        return formatter
    }
    
    var body: some View {
        VStack {
            Text("Select Date Is:")
            Text(dateFormatter.string(from: selectedDate))
                .font(.title)
    //        DatePicker("Selec a Date", selection: $selectedDate)
    //        DatePicker("Select a Date", selection: $selectedDate, displayedComponents: [.date, .hourAndMinute])
            DatePicker("Select a date", selection: $selectedDate, in: startingDate...endingDate, displayedComponents: [.date,])
                
                .tint(Color.blue)
                .datePickerStyle(
                    CompactDatePickerStyle()
    //                GraphicalDatePickerStyle()
    //                WheelDatePickerStyle()
                )
        }

    }
}

#Preview {
    DatePickerBootcamp()
}
