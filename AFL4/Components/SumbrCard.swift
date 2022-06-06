//
//  SumbrCard.swift
//  AFL4
//
//  Created by Ferdy Putra Asmara on 05/06/22.
//

import SwiftUI

struct SumbrCard: View {
    var sumbr: Sumbr
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: sumbr.image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .overlay(alignment: .bottom) {
                        Text(sumbr.name)
                            .font(.headline)
                            .foregroundColor(.white)
                            .shadow(color: .black, radius: 3, x: 0, y: 0)
                            .frame(maxWidth: 136)
                            .padding()
                    }
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 40, height: 40, alignment: .center)
                    .foregroundColor(.white).opacity(0.7)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .overlay(alignment: .bottom) {
                        HStack {
                            Text(sumbr.name)
                                .font(.headline)
                                .foregroundColor(.white)
                                .shadow(color: .black, radius: 3, x: 0, y: 0)
                                .frame(maxWidth: 136)
                            .padding()
                            
//                            if sumsum.isFavorite{
//                                Image(systemName: "star.fill")
//                                    .foregroundColor(.yellow)
//                            }
                        }
                    }
            }
        }
        .frame(width: 160, height: 217, alignment: .top)
        .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .shadow(color: Color.black.opacity(0.3), radius: 15, x: 0, y: 10)

    }
}

struct SumbrCard_Previews: PreviewProvider {
    static var previews: some View {
        SumbrCard(sumbr: Sumbr.all[0])
    }
}
