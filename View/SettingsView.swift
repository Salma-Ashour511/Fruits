//
//  SettingsView.swift
//  Fruits
//
//  Created by V17SAshour1 on 22/05/2025.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.dismiss) var dismiss
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                // MARK: - SECTION 1
                GroupBox {
                    Divider().padding(.vertical, 4)
            
                    HStack {
                        Image("logo")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 80, height: 80)
                            .cornerRadius(9)
                        
                        Text("Most fruits are naturally low in fat, soduim and calories. None have cholesetrol. Fruits are sources of many essential nutrients.")
                            .font(.footnote)
                    }
                } label: {
                    SettingsLabelView(labelText: "fruits", labelImage: "info.circle")
                }
                
                
                // MARK: - SECTION 2
                GroupBox {
                    Divider().padding(.vertical, 4)
                    
                    
                    Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the onboarding screen again")
                        .padding(.vertical, 4)
                        .frame(minHeight: 60)
                        .layoutPriority(1)
                        .font(.footnote)
                        .multilineTextAlignment(.leading)
                    
                    Toggle(isOn: $isOnboarding) {
                        Text("Restart".uppercased())
                            .fontWeight(.bold)
                    }
                    .padding()
                    .background(
                        Color(.tertiarySystemBackground).clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous)))
                    
                } label: {
                    SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")
                }
                
                // MARK: - SECTION 3
                GroupBox {
            
                    SettingsRowView(name: "Developer", content: "Salma Ashour")
                    
                    SettingsRowView(name: "Github", linkLabel: "Salma Ashour", linkDestination: "https://github.com/Salma-Ashour511")
                    
                    
                    SettingsRowView(name: "LinkedIn", linkLabel: "Salma Ashour", linkDestination: "https://www.linkedin.com/in/salmaashour1/")
                } label: {
                    SettingsLabelView(labelText: "Developer", labelImage: "apps.iphone")

                }
            }
            .navigationBarTitle("Settings", displayMode: .large)
            .navigationBarItems(
                trailing:
                    Button(action: {
                       dismiss()
                    }, label: {
                        Image(systemName: "xmark")
                    })
            )
            .padding()
        }
    }
}

#Preview {
    SettingsView()
}
