//
//  CV.swift
//  AFL4
//
//  Created by Ferdy Putra Asmara on 06/06/22.
//

import SwiftUI

struct CV: View {
    var category: Category
    
    var sumbrs: [Sumbr] {
        return Sumbr.all.filter{ $0.category == category.rawValue}
    }
    
    var body: some View {
        ScrollView {
            SumbrList(sumbr: sumbrs)
        }
        .navigationTitle(category.rawValue + "s")
    }
}

struct CV_Previews: PreviewProvider {
    static var previews: some View {
        CV(category: Category.fnb)
    }
}
