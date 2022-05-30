//
//  MenuList.swift
//  AFL4
//
//  Created by Ferdy Putra Asmara on 31/05/22.
//

import SwiftUI

struct MenuList: View {
    var menu: [Menu]
    
    var body: some View {
        VStack{
            HStack {
                //Text("\(menu.count) \(menu.count > 1 ? "option" : "option")")
//                    .font(.headline)
//                    .fontWeight(.medium)
//                    .opacity(0.7)
//                
//                Spacer()
            }
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)], spacing: 15) {
                ForEach(menu) { menu in
                    NavigationLink(destination: FnBMenu()) {
                        MenuCard(menu: menu)
                    }
                    
                }
            }
        }
        .padding(.horizontal)
    }
}

struct MenuList_Previews: PreviewProvider {
    static var previews: some View {
            MenuList(menu: Menu.all)
    }
}
