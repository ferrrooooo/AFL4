//
//  SumbrList.swift
//  AFL4
//
//  Created by Ferdy Putra Asmara on 05/06/22.
//

import SwiftUI

struct SumbrList: View {
    @State var searchText = ""
    @State var isSearching = false
    
    var sumbr: [Sumbr]
    
    var body: some View {
        VStack {
            HStack {
                HStack {
                    TextField("Search", text: $searchText)
                        .padding(.leading, 20)
                }
                .padding()
                .background(Color(.systemGray5))
                .cornerRadius(12)
                .onTapGesture (perform: {
                    isSearching = true
                })
                .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                        Spacer ()
                        
                        if isSearching {
                            Button(action: {searchText = ""}, label: {
                                Image(systemName: "xmark.circle.fill")
                            })
                        }
                        
                    }
                    .padding(.horizontal, 10)
                        .foregroundColor(.gray)
            )
                .transition(.move(edge: .trailing))
                .animation(.spring())
                if isSearching{
                    Button(action: {
                        isSearching = false
                        searchText = ""
                    }, label: {
                        Text("Cancel")
                    })
                }
                
            }
            
            //.padding(.horizontal)
            
//            HStack {
//                Text("\(sumbr.count) \(sumbr.count > 1 ? "opsi" : "opsi")")
//                    .font(.headline)
//                    .fontWeight(.medium)
//                .opacity(0.7)
//
//                Spacer()
//            }
            
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)], spacing: 15) {
                ForEach((sumbr).filter({"\($0)".contains(searchText) || searchText.isEmpty})) { sumbr in
                    NavigationLink(destination: SumbrView(sumbr: sumbr)) {
                        SumbrCard(sumbr: sumbr)
                    }
                }
            }
            .padding(.top)
        }
        .padding(.horizontal)
    }
}

struct SumbrList_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            SumbrList(sumbr: Sumbr.all)
        }
    }
}
