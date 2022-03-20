//
//  SuperheroView.swift
//  SuperherosApp
//
//  Created by Eslam Ali  on 20/03/2022.
//

import SwiftUI


struct SuperheroView: View {

    let superhero : Superhero
    @State var isPressed : Bool =  false
    
    var body: some View {
        ZStack{
            Image(superhero.image)
                .resizable()
                .scaledToFill()
            
            VStack {
                Text(superhero.title)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.white)
                    
                Button(action: {
                    isPressed.toggle()
                }, label: {
                    HStack{
                        Text("Start")
                            .font(.title2)
                            .fontWeight(.bold)
                        Image(systemName: "arrow.right.circle")
                    }// HStalk
                    .padding(10)
                    .background(LinearGradient(gradient: Gradient(colors: superhero.gradientColors), startPoint: .bottomLeading, endPoint: .topLeading))
                        .clipShape(Capsule())
                        .shadow(radius: 10)
                    .alert(isPresented: $isPressed, content: {
                        Alert(title: Text(superhero.title), message: Text(superhero.message), dismissButton: .default(Text("OK")))
                    })
                   
                      
                    
                    
                })
            }//VStalk
            .offset(x: 0, y: 150)
        } // ZStalk
        .frame(width: 335, height: 545, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: superhero.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing))
        .cornerRadius(25)
        .padding(20)
        .shadow(color: .gray, radius: 2, x: 5, y: 5)
    }
}

struct SuperheroView_Previews: PreviewProvider {
    static var previews: some View {
        SuperheroView(superhero: superherosData[1])
    }
}
