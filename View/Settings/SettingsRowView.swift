//
//  SettingsRowView.swift
//  Fruits
//
//  Created by V17SAshour1 on 25/05/2025.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: - PROPERTIES
    var name: String
    var content: String?
    var linkLabel: String?
    var linkDestination: String?
    
    // MARK: - BODY
    var body: some View {
        Divider().padding(.vertical, 4)
        HStack {
            Text(name)
                .foregroundStyle(.gray)
                .fontWeight(.bold)
            Spacer()
            if let content = content {
                Text(content)
            }
            if let linkLabel = linkLabel, let linkDestination = linkDestination {
                Link(linkLabel, destination: URL(string: linkDestination)!)
                Image(systemName: "arrow.up.right.square")
                    .foregroundStyle(.pink)
            }
        }
    }
}

// MARK: - PREVIEW
#Preview {
    SettingsRowView(name: "Developer", content: "Salma Ashour")
}
