//
//  M2.swift
//  AFL4
//
//  Created by Ferdy Putra Asmara on 04/06/22.
//

import SwiftUI

struct M2: View {
    var body: some View {
        NavigationLink {
            FnBMenu()
        } label: {
            PB(text1: "Food n Beverage", text2: "mkn mnm")
//            Button (Text "Hai")
//            VStack() {
//                HStack {
//                    Image(systemName: "pin")
//                        .resizable()
//                        .frame(width: 23, height: 42)
//                        .padding(.leading,15)
//                        .padding(.trailing,5)
//
//                    VStack {
//                        Text("Food n Beverage")
//                            .fontWeight(.semibold)
//                            .font(.title)
//                            .padding(.trailing, 108)
//                        Text("Tourist Attraction")
//                            .font(.subheadline)
//                            .multilineTextAlignment(.leading)
//                            .padding(.trailing,200)
//                    }
//                }
//
//                .background(Color.gray)
//                .cornerRadius(10)
//            }
        }
    }
}

struct M2_Previews: PreviewProvider {
    static var previews: some View {
        M2()
    }
}
