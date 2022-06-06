//
//  Maap.swift
//  AFL4
//
//  Created by Ferdy Putra Asmara on 06/06/22.
//

import SwiftUI
import MapKit

struct Maap: View {
    var coordinate: CLLocationCoordinate2D
    
    @AppStorage("MapView.zoom")
    private var zoom: Zoom = .near
    
    enum Zoom: String, CaseIterable, Identifiable {
        case near = "Near"
        case med = "Medium"
        case far = "Far"
        
        var id: Zoom {
            return self
        }
    }
    
    var delta: CLLocationDegrees {
        switch zoom {
        case .near: return 0.004
        case .med: return 0.02
        case .far: return 0.2
        }
    }
    
    var body: some View {
        Map(coordinateRegion: .constant(region))
    }
    
    var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: delta, longitudeDelta: delta)
        )
    }
}

struct Maap_Previews: PreviewProvider {
    static var previews: some View {
        Maap(coordinate: CLLocationCoordinate2D(
            latitude: 34.011_286,
            longitude: -116.166_868))
    }
}
