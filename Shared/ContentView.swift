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
        
        VStack {
            
            
            List {
                ForEach(cars, id: \.model)
                
                { cars in
                    
                    Text (cars.make)
                    
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
