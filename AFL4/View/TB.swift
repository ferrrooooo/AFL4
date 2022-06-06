//
//  TB.swift
//  AFL4
//
//  Created by Ferdy Putra Asmara on 05/06/22.
//

import SwiftUI

struct TB: View {
    @AppStorage("isDarkMode") private var isDarkMode = false
    var body: some View {
        TabView{
            HView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            CView()
                .tabItem {
                    Label("Categories", systemImage: "square.fill.text.grid.1x2")
                }
            
            FView()
                .tabItem {
                    Label("Favorites", systemImage: "heart")
                }
            
            SView()
                .tabItem {
                    Label("Setting", systemImage: "gear")
                }
        }
        .environment(\.colorScheme, isDarkMode ? .dark : .light)
        .preferredColorScheme(isDarkMode ? .dark : .light)
    }
}

struct TB_Previews: PreviewProvider {
    static var previews: some View {
        TB()
    }
}
