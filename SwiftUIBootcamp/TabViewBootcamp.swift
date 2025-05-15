//
//  TabViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2025/5/15.
//

import SwiftUI

struct TabViewBootcamp: View {
    var body: some View {
        TabView {
            Text("HOME TAB")
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            Text("BROWSE TAB")
                .tabItem(<#T##label: () -> View##() -> View#>)
        }
    }
}

#Preview {
    TabViewBootcamp()
}
