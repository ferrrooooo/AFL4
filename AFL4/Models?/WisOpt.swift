//
//  WisOpt.swift
//  AFL4
//
//  Created by Ferdy Putra Asmara on 31/05/22.
//

import Foundation

struct Wisata: Identifiable{
    let id = UUID()
    let name: String
    //let desc: String
    let image: String
}

extension Wisata {
    static let all: [Wisata] = [
        Wisata(name: "Food and Beverage",
               image: "https://thumbs.dreamstime.com/b/spoon-fork-icon-vector-illustration-menu-logo-136899877.jpg"
            // desc: "Tourist Attraction in Surabaya",
            ),
        Wisata(name: "Shopping",
               image: "https://png.pngtree.com/png-vector/20190725/ourlarge/pngtree-vector-star-icon-png-image_1577370.jpg"
            // desc: "The Place You Like",
            ),
        Wisata(name: "Monuments",
               image: "https://cdn.pixabay.com/photo/2014/10/03/17/16/gear-471998_960_720.jpg"
               //desc: "To See aja",
            )
        
    ]
}
