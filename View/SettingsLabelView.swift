//
//  SettingsLabelView.swift
//  Fruits
//
//  Created by V17SAshour1 on 23/05/2025.
//

import SwiftUI

struct SettingsLabelView: View {
    
    // MARK: - PROPERTIES
    var labelText: String
    var labelImage: String
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

// MARK: - PREVIEW
#Preview {
    SettingsLabelView(labelText: "Fruits", labelImage: "info.circle")
}
