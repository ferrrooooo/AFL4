//
//  SView.swift
//  AFL4
//
//  Created by Ferdy Putra Asmara on 05/06/22.
//

import SwiftUI

struct SView: View {
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    var body: some View {
        NavigationView {
            VStack{
                Picker("Mode", selection: $isDarkMode) {
                    Text("Light")
                        .tag(false)
                    Text("Dark")
                        .tag(true)
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding()
                Spacer()
            }
            .navigationTitle("Setting")
        }
        .navigationViewStyle(.stack)
    }
}

struct SView_Previews: PreviewProvider {
    static var previews: some View {
        SView()
    }
}
