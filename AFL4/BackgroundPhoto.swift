//
//  BackgroundPhoto.swift
//  AFL4
//
//  Created by Ferdy Putra Asmara on 30/05/22.
//

import SwiftUI

struct BackgroundPhoto: View {
    var body: some View {
        ScrollView{
            VStack {
                Image("bt")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 390, height: 260)
                    Spacer()
                Text("Bakmi Trunojoyo")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.top,18)
                Text("Bakmi Jogja di Surabaya")
                    .font(.subheadline)
                    .foregroundColor(.white)
                HStack {
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .foregroundColor(.yellow)
                    Image(systemName: "star.fill")
                        .foregroundColor(.white)
                }
                .padding(.top,-5)
                HStack {
                    Text("Alamat")
                        .foregroundColor(.white)
                    Text("")
                }
            }
        }
        .edgesIgnoringSafeArea(.top)
        .background(.black)
    }
}

struct BackgroundPhoto_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundPhoto()
    }
}
