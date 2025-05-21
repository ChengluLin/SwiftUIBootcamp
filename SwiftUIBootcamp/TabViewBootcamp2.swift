//
//  TabViewBootcamp2.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2025/5/16.
//

import SwiftUI

struct TabViewBootcamp2: View {
    @State var selectedTab: Int = 0
      
      let icons: [String] = [
          "heart.fill", "globe", "house.fill", "person.fill"
      ]
      
      var body: some View {
          ZStack {
              // 將 RadialGradient 放到 ZStack 背後
              RadialGradient(
                  gradient: Gradient(colors: [Color.red, Color.blue]),
                  center: .center,
                  startRadius: 5,
                  endRadius: 300
              )
              .ignoresSafeArea() // 讓它延伸到整個螢幕
              
              TabView {
                  ForEach(icons, id: \.self) { icon in
                      Image(systemName: icon)
                          .resizable()
                          .scaledToFit()
                          .padding(30)
                  }
              }
              .tabViewStyle(PageTabViewStyle())
          }
          .frame(height: 300)
      }
}

#Preview {
    TabViewBootcamp2()
}
