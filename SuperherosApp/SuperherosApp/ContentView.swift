//
//  ContentView.swift
//  SuperherosApp
//
//  Created by Eslam Ali  on 20/03/2022.
//

import SwiftUI

struct ContentView: View {
   
    var superheros : [Superhero]
    var body: some View {
        ScrollView(.horizontal) {
          
            HStack {
                ForEach (superheros) {
                    item in
                    SuperheroView(superhero: item)
                }
           
            } // HStack
    }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(superheros: superherosData)
    }
}
