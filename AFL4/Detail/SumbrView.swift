//
//  SumbrView.swift
//  AFL4
//
//  Created by Ferdy Putra Asmara on 05/06/22.
//

import SwiftUI

struct SumbrView: View {
    var sumbr: Sumbr
    
    var body: some View {
        ScrollView{
            AsyncImage(url: URL(string: sumbr.image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 1)
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundColor(.white).opacity(0.7)
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .frame(height: 300)
            .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
            
            VStack(spacing: 30) {
                Text(sumbr.name)
                    .font(.title)
                    .bold()
                    .multilineTextAlignment(.center)
                Text(sumbr.description)
                    .padding(.top, -20)
                    .frame(width: 370)
                   .multilineTextAlignment(.center)
                Text(sumbr.star)
                    .padding(.top, -20)
                
                VStack{
                    VStack(alignment: .leading, spacing: 10.0) {
                        Text("Alamat")
                            .font(.subheadline)
                        Text(sumbr.alamat)
                            .frame(width: 300, height: 55)
                        
                        Spacer()
                        
                        Text("Jam Operasional")
                            .font(.subheadline)
                        Text(sumbr.jam)
                        
                        Spacer()
                        
                        Text("No. Telepon")
                            .font(.subheadline)
                        Text(sumbr.telp)
                        
                        Maap(coordinate: sumbr.locationCoordinate)
                            .scaledToFit()
                    }
                }
                .padding(.leading)
                .frame(maxWidth: .infinity, alignment: .leading)
            }
            .padding(.horizontal, -10)
        }
        .ignoresSafeArea(.container, edges: .top)
    }
}

struct SumbrView_Previews: PreviewProvider {
    static var previews: some View {
        SumbrView(sumbr: Sumbr.all[4])
    }
}
