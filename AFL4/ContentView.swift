//
//  ContentView.swift
//  AFL4
//
//  Created by Ferdy Putra Asmara on 24/05/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack {
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
            .padding(.bottom,30)
            
            VStack() {
                HStack {
                    Image(systemName: "heart")
                        .resizable()
                        .frame(width: 32, height: 32)
                        .padding(.leading,10)
                    VStack {
                        Text("Favorite")
                            .fontWeight(.semibold)
                            .font(.title)
                            .padding(.trailing, 220)
                        Text("Tourist Attraction")
                            .font(.subheadline)
                            .multilineTextAlignment(.leading)
                            .padding(.trailing,205)
                    }
                }
            .background(Color.gray)
            .cornerRadius(10)
            }
            .padding(.bottom,30)
            VStack() {
                HStack {
                    Image(systemName: "gearshape")
                        .resizable()
                        .frame(width: 32, height: 32)
                        .padding(.leading,10)
                    VStack {
                        Text("Settings")
                            .fontWeight(.semibold)
                            .font(.title)
                            .padding(.trailing, 220)
                        Text("Tourist Attraction")
                            .font(.subheadline)
                            .multilineTextAlignment(.leading)
                            .padding(.trailing,205)
                    }
                }
            .background(Color.gray)
            .cornerRadius(10)
            }
        }
                
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
