//
//  SourceLinkView.swift
//  Fruits
//
//  Created by V17SAshour1 on 21/05/2025.
//

import SwiftUI

struct SourceLinkView: View {
    
    var body: some View {
        GroupBox {
            HStack {
                Text("Content source")
                Spacer()
                
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    SourceLinkView()
        .padding()
}
