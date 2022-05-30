//
//  FnBList.swift
//  AFL4
//
//  Created by Ferdy Putra Asmara on 30/05/22.
//

import SwiftUI

struct FnBList: View {
    var fnb: [Fnb]
    
    var body: some View {
        VStack{
            HStack {
                Text("\(fnb.count) \(fnb.count > 1 ? "option" : "option")")
                    .font(.headline)
                    .fontWeight(.medium)
                    .opacity(0.7)
                
                Spacer()
            }
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing: 15)],  spacing: 15) {
                ForEach(fnb) { fnb in
                    NavigationLink(destination: FnBView(fnb: fnb)) {
                        FnBCard(fnb: fnb)
                    }
                }
            }
            .padding(.top)
        }
        .padding(.vertical)
    }
}

struct FnBList_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView{
            FnBList(fnb: Fnb.all)
        }
    }
}
