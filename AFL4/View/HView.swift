//
//  HView.swift
//  AFL4
//
//  Created by Ferdy Putra Asmara on 05/06/22.
//

import SwiftUI

struct HView: View {
    //private var nama = [Sumbr.name]
    
    var body: some View {
        NavigationView{
            ScrollView {
                SumbrList(sumbr: Sumbr.all)
            }
            .navigationTitle("All Option")
        }
        .navigationViewStyle(.stack)
    }
}

struct HView_Previews: PreviewProvider {
    static var previews: some View {
        HView()
    }
}
