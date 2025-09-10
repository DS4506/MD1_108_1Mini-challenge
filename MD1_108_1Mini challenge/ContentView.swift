//
//  ContentView.swift
//  MD1_108_1Mini challenge
//
//  Created by Willie Earl on 9/6/25.
//

import SwiftUI
import CoreData

struct ContentView: View {
    let fontSize:Double // double check
    
    var body: some View {
        TabView {
            HomeView(fontSize: fontSize)
                .tabItem{
                    Label("Home", systemImage: "house.fill")
                }
            
            SettingsView()
                .tabItem{
                    Label("Settings", systemImage: "gearshape.fill")
                }
        }
    }
}
    
struct HomeView: View {
    let fontSize: Double
    
    var body: some View {
        NavigationView {
            VStack (spacing: 16){
                Text("Welcome To Settings App")
                    .font(.system(size: fontSize+2, weight: .semibold))
                    .multilineTextAlignment(.center)
            }
        }
    }
}


