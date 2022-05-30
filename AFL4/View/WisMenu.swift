//
//  WisMenu.swift
//  AFL4
//
//  Created by Ferdy Putra Asmara on 31/05/22.
//

import SwiftUI

struct WisMenu: View {
    var body: some View {
        NavigationView{
            WisList(wisata: Wisata.all)
        }
        .navigationViewStyle(.stack)
    }
}

//NavigationView{
//    ScrollView{
//        FnBList(fnb: Fnb.all)
//    }
//    .navigationTitle("Food and Beverage")
//}
//.navigationViewStyle(.stack)
//}
//}

struct WisMenu_Previews: PreviewProvider {
    static var previews: some View {
        WisMenu()
    }
}
