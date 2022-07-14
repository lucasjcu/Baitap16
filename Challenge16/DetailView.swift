//
//  DetailView.swift
//  Challenge16
//
//  Created by Nguyen Long on 14/07/2022.
//

import SwiftUI

struct DetailView: View {
    var detail:author
    var body: some View {
        ScrollView{
            ForEach(detail.quotes, id: \.self) { i in
                Text(i)
            }
        }
       
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        let model = authorModel()
        DetailView(detail: model.authors[0])
    }
}
