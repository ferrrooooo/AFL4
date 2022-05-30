//
//  FnBOpt.swift
//  AFL4
//
//  Created by Ferdy Putra Asmara on 30/05/22.
//

import Foundation

enum Category: String {
    case Cafe = "Cafe"
    case Restaurant = "Restaurant"
}

struct Fnb: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let alamat: String
    let jam: String
    let telp: String
    let category: Category.RawValue
    let image: String
    let star: String
}



extension Fnb {
    static let all: [Fnb] = [
        Fnb(name: "Bakmi Trunojoyo",
            description: "Bakmi Jogja di Surabaya",
            alamat: "Jl. Tegalsari No.47, Tegalsari, Kec. Tegalsari, Kota SBY, Jawa Timur 60262",
            jam: "11AM - 9PM",
            telp: "(031) 5343859",
            category: "Restaurant",
            image:"https://media-cdn.tripadvisor.com/media/photo-s/15/67/10/d4/dapurnya-ada-di-depan.jpg",
            star: "⭐️⭐️⭐️⭐️⭐️"
           ),
        Fnb(name: "Solaria",
            description: "Makanan Sejuta Umat",
            alamat: "Jl. Dimana-mana",
            jam: "24/7",
            telp: "(031) 321425322",
            category: "Restaurant",
            image: "https://i0.wp.com/plazaslipijaya.com/wp-content/uploads/2022/01/Solaria-di-Plaza-Slipi-Jaya.jpg?fit=1280%2C948&ssl=1",
            star: "⭐️⭐️⭐️⭐️"
           ),
        Fnb(name: "Starbucek",
            description: "Kopi Sosialita",
            alamat: "Jl. jalan aja jadian ngga",
            jam: "22/7",
            telp: "(031) 14045",
            category: "Cafe",
            image: "https://www.water-sport-bali.com/wp-content/uploads/2019/03/Starbucks-Reserve-Dewata-1024x576.jpg",
            star: "⭐️⭐️⭐️⭐️⭐️"
           ),
        Fnb(name: "Geprek Bensu",
            description: "Makanan Pedas kek Omonganmu",
            alamat: "Jl. in Aja dulu mungkin cocok",
            jam: "24/7",
            telp: "(031) 321425322",
            category: "Restaurant",
            image: "https://imgsrv2.voi.id/CGwEjwcKJPQ0WBGNZ2_HZSK1i_1TUDmRipzEjnfMCk8/auto/1200/675/sm/1/bG9jYWw6Ly8vcHVibGlzaGVycy83MTQwLzIwMjAwNjExMTYxMy1tb2JpbGUuY3JvcHBlZF8xNTkxODY2ODc3LmpwZw.jpg",
            star: "⭐️⭐️⭐️⭐️"
           )
    ]
}
