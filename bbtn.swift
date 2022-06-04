//
//  bbtn.swift
//  AFL4
//
//  Created by Ferdy Putra Asmara on 04/06/22.
//

import Foundation
import SwiftUI

extension Button {
    func fnbButton() -> some View {
        VStack() {
            HStack {
                Image(systemName: "pin")
                    .resizable()
                    .frame(width: 23, height: 42)
                    .padding(.leading,15)
                    .padding(.trailing,5)
                
                VStack {
                    Text("Food n Beverage")
                        .fontWeight(.semibold)
                        .font(.title)
                        .padding(.trailing, 108)
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
