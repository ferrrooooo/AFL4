//
//  M1.swift
//  AFL4
//
//  Created by Ferdy Putra Asmara on 04/06/22.
//

import SwiftUI

struct M1: View {
    var body: some View {
        NavigationLink {
            M1()
        } label: {
            VStack() {
                HStack {
                    Image(systemName: "pin")
                        .resizable()
                        .frame(width: 23, height: 42)
                        .padding(.leading,15)
                        .padding(.trailing,5)

                    VStack {
                        Text("Tempat Wisata")
                            .fontWeight(.semibold)
                            .font(.title)
                            .padding(.trailing, 134)
                        Text("Tourist Attraction")
                            .font(.subheadline)
                            .multilineTextAlignment(.leading)
                            .padding(.trailing,200)
                    }
                }
            .background(Color.gray)
            .cornerRadius(10)
        }

        }
    }
}

struct M1_Previews: PreviewProvider {
    static var previews: some View {
        M1()
    }
}
