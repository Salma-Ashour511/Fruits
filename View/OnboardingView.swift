//
//  OnboardingView.swift
//  Fruits
//
//  Created by V17SAshour1 on 20/05/2025.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        TabView {
            ForEach(0..<6) { item in
                FruitCardView(fruit: fruitsData[item])
            }
           
        }
        .tabViewStyle(.page)
        .padding(.vertical, 20)
    }
}

//MARK: - PREVIEW
#Preview {
    OnboardingView()
}
