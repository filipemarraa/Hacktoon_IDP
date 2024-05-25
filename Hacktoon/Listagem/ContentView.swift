//
//  ContentView.swift
//  Listagem
//
//  Created by Filipe Jacobson Marra on 25/05/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            CarouselView(views: getChildViews())
        }
        .ignoresSafeArea()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    func getChildViews() -> [CarouselViewChild] {
        var tempViews: [CarouselViewChild] = []
        
        for i in (1...4) {
            tempViews.append(CarouselViewChild(id: i, content: {
                ZStack{
                    Image("\(i)")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .mask {
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 250, height: 400)
                        }
                }
                .frame(width: 250, height: 400)
                .shadow(radius: 10)
            }))
        }
        
        return tempViews
    }
}

#Preview {
    ContentView()
}
