//
//  FView.swift
//  AFL4
//
//  Created by Ferdy Putra Asmara on 05/06/22.
//

import SwiftUI

struct FView: View {
    var body: some View {
        NavigationView {
            Text("Favorite")
            .navigationTitle("Favorite")
        }
        .navigationViewStyle(.stack)
    }
}

struct FView_Previews: PreviewProvider {
    static var previews: some View {
        FView()
    }
}
