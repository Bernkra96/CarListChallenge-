//
//  ContentView.swift
//  Shared
//
//  Created by Bernhard Kratky on 09.08.22.
//

import SwiftUI



struct ContentView: View {
    
    private var cars: [Car]  = Car.allCars
    
    var body: some View {
        
        ZStack {
            
            
            List {
                ForEach(cars, id: \.model) { cars in
                    VStack {
                        HStack {
                            Image ("\(cars.model)")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .accessibilityLabel(" Image of \(cars.make)   \(cars.model)")
                            
                            Text ("\(cars.make)    \(cars.model) ")
                        }
                        
                        
                        HStack {
                            
                            Text ("\(cars.customerPrice)")
                            
                            Text ("\(cars.marketPrice)")
                            
                        }
                        
                        VStack {
                            
                            let cons = cars.consList.joined(separator: " " )
                            
                            let pros = cars.prosList.joined(separator: " " )
                            
                            Text (String ("\(pros)"))
                            
                            
                            Text (String ("\(cons)"))
                            
                            
                        }
                        
                        Text ("\(cars.rating)")
                    }.padding(.all)
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
