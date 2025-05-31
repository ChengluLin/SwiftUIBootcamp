//
//  Dark Mode.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2025/5/21.
//

import SwiftUI

struct DarkModeBootcamp: View {
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    Text("This color is PRIMARY")
                        .foregroundStyle(.primary)
                    Text("This color is PRIMARY")
                        .foregroundStyle(.secondary)
                    Text("This color is PRIMARY")
                        .foregroundStyle(.black)
                    Text("This color is PRIMARY")
                        .foregroundStyle(.white)
                    Text("This color is RED")
                        .foregroundStyle(.red)
                    
                }
            }
            .navigationTitle("Dark Mode Bootcamp")
        }
    }
}

//#Preview {
//    Group {
//        Dark_Mode()
//            .preferredColorScheme(.light)
//        Dark_Mode()
//            .preferredColorScheme(.dark)
//    }
//   
//}
struct DarkModeBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            DarkModeBootcamp()
                .preferredColorScheme(.light)
            DarkModeBootcamp()
                .preferredColorScheme(.dark)
        }
    }
}
