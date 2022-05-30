//
//  FnBView.swift
//  AFL4
//
//  Created by Ferdy Putra Asmara on 30/05/22.
//

import SwiftUI

struct FnBView: View {
    var fnb: Fnb
    
    var body: some View {
        ScrollView{
            AsyncImage(url: URL(string: fnb.image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .frame(height: 300)
            .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3),Color(.gray)]), startPoint: .top, endPoint: .bottom))
            
            VStack {
                Text(fnb.name)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                Text(fnb.description)
                Text(fnb.star)
                    .padding(.top,-5)
                
                VStack(alignment: .leading, spacing: 20){
                    HStack {
                        Text("Alamat:         ")
                            .padding(.leading)
                        Text(fnb.alamat)
                            .padding(.top,10)
                        
                    }
                    
                    HStack {
                        Text("Jam Buka: ")
                            .padding(.leading)
                        Text(fnb.jam)
                    }
                    HStack {
                        Text("No. Telp:    ")
                            .padding(.leading)
                        Text(fnb.telp)
                    }
                    
                    
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                
            }
            .padding(.horizontal)
        }
        .ignoresSafeArea(.container, edges: .top)
    }
}

struct FnBView_Previews: PreviewProvider {
    static var previews: some View {
        FnBView(fnb: Fnb.all[0])
    }
}
