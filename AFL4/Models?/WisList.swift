//
//  WisList.swift
//  AFL4
//
//  Created by Ferdy Putra Asmara on 31/05/22.
//

import SwiftUI

struct WisList: View {
    var wisata: [Wisata]
    
    var body: some View {
        VStack{
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)], spacing: 15) {
                ForEach(wisata) { wisata in
                    NavigationLink(destination: FnBMenu()) {
                        WisCard(wisata: wisata)
                    }
                    
                }
            }
        }
        .padding(.horizontal)
    }
}

struct WisList_Previews: PreviewProvider {
    static var previews: some View {
        WisList(wisata: Wisata.all)
    }
}
