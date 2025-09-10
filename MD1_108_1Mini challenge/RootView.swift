//
//  RemberMeApp.swift
//  MD1_108_1Mini challenge
//
//  Created by Willie Earl on 9/6/25.
//

import SwiftUI

func colorScheme(from value: String)-> ColorScheme? {
    switch value {
    case "light":
        return .light
    case "dark":
        return .dark
    default:
        return nil
  }
}

struct RootView: View {
    @AppStorage("theme") private var theme: String = "system"
    @AppStorage("fontSize") private var fontSize: Double = 17
    @AppStorage("accentHue") private var accentHue: Double = 0.62
    
    var body: some View {
        
        ContentView(fontSize: fontSize)
        .preferredColorScheme(MD1_108_1Mini_challenge.colorScheme(from: theme))
        .tint(Color(hue:accentHue, saturation:0.75, brightness: 0.95))
        .environment(\.font, .system(size: fontSize))
        
        
    }
}


#Preview {
    RootView()
}
