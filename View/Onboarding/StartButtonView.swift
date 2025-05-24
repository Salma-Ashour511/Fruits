//
//  StartButtonView.swift
//  Fruits
//
//  Created by V17SAshour1 on 20/05/2025.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - PROPERTIES
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    // MARK: - BODY
    var body: some View {
        Button {
            isOnboarding = false
        } label: {
            HStack(spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
        }
        .accentColor(.white)
        .padding(.horizontal, 16)
        .padding(.vertical, 10)
        .background(Capsule().strokeBorder(Color.white, lineWidth: 1.25))
    }
}

// MARK: - PREVIEW
#Preview(traits: .sizeThatFitsLayout)  {
    StartButtonView()
       
}
