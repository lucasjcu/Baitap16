//
//  ContentView.swift
//  Challenge16
//
//  Created by Nguyen Long on 14/07/2022.
//

import SwiftUI

struct ContentView: View {
   @ObservedObject var model = authorModel()
    var body: some View {
        NavigationView{

            ScrollView{
                ForEach(model.authors) { t in

                    NavigationLink(destination: DetailView(detail: t), label: {
                        ZStack{
                            Image(t.image)
                                .resizable()
                                .scaledToFill()
                                .cornerRadius(15)
                                .padding()
                            Text(t.name)
                        }
                        
                    })
                   
                }
            }
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
