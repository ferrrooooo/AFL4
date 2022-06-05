//
//  PB.swift
//  AFL4
//
//  Created by Ferdy Putra Asmara on 04/06/22.
//

import SwiftUI

struct PB: View {
    var text1: String
    var text2: String
    
    var body: some View {
        VStack() {
//            HStack {
//                Image(img)
//                    .resizable()
//                    .frame(width: 23, height: 42)
//                    .padding(.leading,15)
//                    .padding(.trailing,5)

                VStack {
                    Text(text1)
                        .font(.title.bold())
                        .multilineTextAlignment(.center)
                        
                    Text(text2)
                        .font(.subheadline)
                        .multilineTextAlignment(.center)
                }
            //}


        .background(Color.gray)
        .cornerRadius(10)
    }

    }
}

struct PB_Previews: PreviewProvider {
    static var previews: some View {
        PB(text1: "next", text2: "nesx")
    }
}
