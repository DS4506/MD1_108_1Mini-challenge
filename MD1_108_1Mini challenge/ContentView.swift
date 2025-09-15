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
                
                Text("Your theme, font size, and accent color are remebered across launches.")
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                
                Button("Try a Tinted Button") {print("Tapped!")}
                
                if let url = URL(string: "https://apple.com") {
                    Link("Open Apple", destination: url)
                }
            }
            .padding()
            .navigationTitle("Home")
        }
    }
}


