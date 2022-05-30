//
//  FnBMenu.swift
//  AFL4
//
//  Created by Ferdy Putra Asmara on 30/05/22.
//

import SwiftUI

struct FnBMenu: View {
    var body: some View {
        NavigationView{
            ScrollView{
                FnBList(fnb: Fnb.all)
            }
            .navigationTitle("Food and Beverage")
        }
        .navigationViewStyle(.stack)
    }
}

struct FnBMenu_Previews: PreviewProvider {
    static var previews: some View {
        FnBMenu()
    }
}
