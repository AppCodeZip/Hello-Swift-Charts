//
//  ContentView.swift
//  Charts Demo
//
//  Created by Sushil  on 11/06/22.
//

import SwiftUI
import Charts


struct ContentView: View {
    var body: some View {
        
        TabView {
            BarMarkView()
                .tabItem {
                    Label("One", systemImage: "star")
                }
            
//            BarMarkColorView()
            LineMarkView()
                .tabItem {
                    Label("Two", systemImage: "circle")
                }
//            CustomizeBarMarkView()
            PointMarkView()
                .tabItem {
                    Label("Three", systemImage: "circle")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
