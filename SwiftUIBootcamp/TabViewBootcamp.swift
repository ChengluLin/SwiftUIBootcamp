//
//  TabViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2025/5/15.
//

import SwiftUI

struct TabViewBootcamp: View {
    var body: some View {
        TabView{
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            
                Text("BROWSE TAB")
                    .tabItem {
                        Image(systemName: "globe")
                        Text("Home")
                    }
                Text("PROFILE TAB")
                    .tabItem {
                        Image(systemName: "person.fill")
                        Text("Profile")
                    }

        }
        .accentColor(.red)
    }
}

#Preview {
    TabViewBootcamp()
}

struct HomeView: View {
    var body: some View {
        ZStack {
            Color.red.ignoresSafeArea(edges: .top)
            Text("HOME TAB")
                .font(.largeTitle)
                .foregroundStyle(.white)
        }
    }
}
