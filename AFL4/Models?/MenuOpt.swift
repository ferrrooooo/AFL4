//
//  MenuOpt.swift
//  AFL4
//
//  Created by Ferdy Putra Asmara on 30/05/22.
//

import Foundation

struct Menu: Identifiable{
    let id = UUID()
    let name: String
    let desc: String
    let image: String
}

extension Menu {
    static let all: [Menu] = [
        Menu(name: "Tempat Wisata",
             desc: "Tourist Attraction in Surabaya",
             image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0PCTUT4IFwIXIAhHwpwdb3vkcOoALY8VXMKXnZdrTKKNtrK6jdUVPCEqTf1kgUeVd6Yc&usqp=CAU"
            ),
        Menu(name: "Favorite",
             desc: "The Place You Like",
             image: "https://png.pngtree.com/png-vector/20190725/ourlarge/pngtree-vector-star-icon-png-image_1577370.jpg"
            ),
        Menu(name: "Settings",
             desc: "To See aja",
             image: "https://cdn.pixabay.com/photo/2014/10/03/17/16/gear-471998_960_720.jpg"
            )
        
    ]
}
