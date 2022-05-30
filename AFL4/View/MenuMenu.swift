//
//  MenuMenu.swift
//  AFL4
//
//  Created by Ferdy Putra Asmara on 31/05/22.
//

import SwiftUI

struct MenuMenu: View {
    var body: some View {
        NavigationView{
            MenuList(menu: Menu.all)
        }
        .navigationViewStyle(.stack)
    }
}


struct MenuMenu_Previews: PreviewProvider {
    static var previews: some View {
        MenuMenu()
    }
}
