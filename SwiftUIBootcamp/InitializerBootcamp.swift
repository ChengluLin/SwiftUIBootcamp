//
//  InitializerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2024/11/18.
//

import SwiftUI

struct InitializerBootcamp: View {
    
    
    let backgroundColor: Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruit) {

        self.count = count
     
        switch fruit {
        case .apple:
            self.title = "Apples"
            self.backgroundColor = .red
        case .orange:
            self.title = "Oranges"
            self.backgroundColor = .orange
        }
        
    }
    
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        VStack {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundStyle(.white)
                .underline()
            
            Text(title)
                .font(.headline)
                .foregroundStyle(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .clipShape(RoundedRectangle(cornerSize: CGSize(width: 20, height: 10)))

    }
}

#Preview {
    VStack {
        InitializerBootcamp(count: 100, fruit: .orange)
        InitializerBootcamp(count: 50, fruit: .apple)
    }
}
