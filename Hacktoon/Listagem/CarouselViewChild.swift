//
//  CarouselViewChild.swift
//  Listagem
//
//  Created by Filipe Jacobson Marra on 25/05/24.
//

import Foundation
import SwiftUI

struct CarouselViewChild: View, Identifiable {
    var id: Int
    @ViewBuilder var content: any View
    
    var body: some View {
        ZStack {
            AnyView(content)
        }
    }
}
