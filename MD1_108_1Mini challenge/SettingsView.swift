//
//  SettingView.swift
//  MD1_108_1Mini challenge
//
//  Created by Willie Earl on 9/6/25.
//

import SwiftUI


struct SettingsView: View {
    @AppStorage("theme") private var theme: String = "system"
    @AppStorage("fontSize") private var fontSize: Double = 17
    @AppStorage("accentHue") private var accentHue: Double = 0.62
    
    var body: some View {
        NavigationView {
            Form {
                Section( header: Text("Theme")) {
                    Picker("Theme", selection: $theme) {
                        Text("Light").tag("light")
                        Text("Dark").tag("dark")
                        Text("System").tag("system")
                    }
                    .pickerStyle(.segmented)
                
                }
    
                Section(header: Text("Font Size \(Int(fontSize)) pt")) {
                    Slider(value: $fontSize, in: 12...28, step: 1)
                }
                
                Section (header: Text("Accent Color")) {
                    HStack {
                        Text("Hue")
                        Slider(value: $accentHue, in: 0...1)
                    }
                    HStack {
                        Spacer()
                        RoundedRectangle(cornerRadius: 8)
                            .fill(Color(hue: accentHue, saturation: 0.75, brightness: 0.95))
                            .frame(width: 120, height: 24)
                        Spacer()
                        
                    }
                }
                
                Section{
                    Button("Reset to Defaults", role: .destructive) {
                            theme = "system"
                            fontSize = 17
                            accentHue = 0.62
                    }
                }
            }
            
                .navigationTitle("Settings")
        }
    }
}
    
    

    
