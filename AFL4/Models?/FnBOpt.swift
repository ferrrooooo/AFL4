//
//  FnBOpt.swift
//  AFL4
//
//  Created by Ferdy Putra Asmara on 30/05/22.
//

import Foundation
//import SwiftUI
import CoreLocation

enum Category: String, CaseIterable, Identifiable {
    var id: String {self.rawValue}
    
    case fnb = "Food and Beverage"
    case monum = "Monument"
    case shop = "Shopping"
}

struct Sumbr: Identifiable {
    let id = UUID()
    let name: String
    let description: String
    let alamat: String
    let jam: String
    let telp: String
    let category: Category.RawValue
    let image: String
    let star: String
    
    //var Favorit: Bool
    
    var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
            CLLocationCoordinate2D(
                latitude: coordinates.latitude,
                longitude: coordinates.longitude)
        }


       struct Coordinates: Hashable, Codable {
           var latitude: Double
           var longitude: Double
       }
}



extension Sumbr {
    static let all: [Sumbr] = [
        Sumbr(name: "Bakmi Trunojoyo",
            description: "Bakmi Jogja di Surabaya",
            alamat: "Jl. Tegalsari No.47, Tegalsari, Kec. Tegalsari, Kota SBY, Jawa Timur 60262",
            jam: "11AM - 9PM",
            telp: "(031) 5343859",
            category: "Food and Beverage",
            image:"https://media-cdn.tripadvisor.com/media/photo-s/15/67/10/d4/dapurnya-ada-di-depan.jpg",
            star: "⭐️⭐️⭐️⭐️⭐️",
            coordinates: Coordinates(latitude: -7.26592, longitude: 112.73771)
           ),
        Sumbr(name: "RM Padang Bundo Sati",
            description: "Makanan Padang Ter-Enak di Surabaya",
            alamat: "Jl. Walikota Mustajab No.70, Ketabang, Kec. Genteng, Kota SBY, Jawa Timur 60272",
            jam: "9.30AM - 9.30PM",
            telp: "(031) 5344672",
            category: "Food and Beverage",
            image: "https://media-cdn.tripadvisor.com/media/photo-s/16/30/63/08/20190122-154719-largejpg.jpg",
            star: "⭐️⭐️⭐️⭐️",
            coordinates: Coordinates(latitude: -7.26064, longitude: 112.74568)
           ),
        Sumbr(name: "Tugu Pahlawan",
              description: "Tempat Bersejarah di Surabaya",
              alamat: "Jl. Pahlawan, Alun-alun Contong, Kec. Bubutan, Kota SBY, Jawa Timur 60174",
              jam: "8AM - 3PM",
              telp: "(031) 3571100",
              category: "Monument",
              image: "https://upload.wikimedia.org/wikipedia/commons/3/3e/Tugu_Pahlawan_Surabaya.jpg",
              star: "⭐️⭐️⭐️⭐️",
              coordinates: Coordinates(latitude: -7.24581, longitude: 112.73782)
             ),
        Sumbr(name: "Monumen Kapal Selam",
              description: "Museum didalam bekas kapal selam perang Rusia",
              alamat: "Jl. Pemuda No.39, Embong Kaliasin, Kec. Genteng, Kota SBY, Jawa Timur 60271",
              jam: "8AM - 8PM",
              telp: "(031) 5311088",
              category: "Monument",
              image: "https://www.surabayarollcake.com/wp-content/uploads/2018/10/Monumen-Kapal-Selam-Monkasel.jpg",
              star: "⭐️⭐️⭐️⭐️",
              coordinates: Coordinates(latitude: -7.26567, longitude: 112.75028)
              ),
        Sumbr(name: "Tunjungan Plaza 1-6",
              description: "Mal Megah sampe 6 part",
              alamat: "Jl. Jenderal Basuki Rachmat No.8-12, Kedungdoro, Kec. Tegalsari, Kota SBY, Jawa Timur 60261",
              jam: "10AM - 10PM",
              telp: "(031) 5490410",
              category: "Shopping",
              image: "https://s3.bukalapak.com/bukalapak-kontenz-production/content_attachments/32018/original/shutterstock_1039357051_2.jpg",
              star: "⭐️⭐️⭐️⭐️⭐️",
              coordinates: Coordinates(latitude: -7.26227, longitude: 112.73844)
              ),
        Sumbr(name: "Starbuck Graha Pena",
            description: "Kopi Sosialita, Harga Suippp",
            alamat: "graha pena Fontage Road, Jl. Ahmad Yani No.88, Ketintang, Kec. Gayungan, Kota SBY, Jawa Timur 60234",
            jam: "8AM - 9PM",
            telp: "(031) 8272476",
            category: "Food and Beverage",
            image: "https://pbs.twimg.com/media/CFVdon4UkAEzJub.jpg",
            star: "⭐️⭐️⭐️⭐️⭐️",
            coordinates: Coordinates(latitude: -7.32006, longitude: 112.73233)
           ),
//        Sumbr(name: "Geprek Bensu",
//            description: "Makanan Pedas kek Omonganmu",
//            alamat: "Jl. in Aja dulu mungkin cocok",
//            jam: "24/7",
//            telp: "(031) 321425322",
//            category: "Food and Beverage",
//            image: "https://imgsrv2.voi.id/CGwEjwcKJPQ0WBGNZ2_HZSK1i_1TUDmRipzEjnfMCk8/auto/1200/675/sm/1/bG9jYWw6Ly8vcHVibGlzaGVycy83MTQwLzIwMjAwNjExMTYxMy1tb2JpbGUuY3JvcHBlZF8xNTkxODY2ODc3LmpwZw.jpg",
//            star: "⭐️⭐️⭐️⭐️"
//           )
    ]
}
