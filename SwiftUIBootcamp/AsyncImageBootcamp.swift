//
//  AsyncImageBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by ChengLu on 2025/11/25.
//

import SwiftUI

struct AsyncImageBootcamp: View {
    
    let url = URL(string: "https://picsum.ph")
    
    var body: some View {
        //        AsyncImage(url: url, content: { returnedImage in
        //            returnedImage
        //                .resizable()
        //                .scaledToFit()
        //                .frame(width: 200, height: 200)
        //                .cornerRadius(20)
        //        }, placeholder: {
        //            ProgressView()
        //        })
        //            .frame(width: 100, height: 100)
        
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let returnedImage):
                returnedImage
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                    .cornerRadius(20)
            case .failure(_):
                Image(systemName: "questionmark")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
//                    .font(.headline)
            default:
                Image(systemName: "questionmark")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
//                    .font(.headline)
            }
        }
    }
}

#Preview {
    AsyncImageBootcamp()
}
