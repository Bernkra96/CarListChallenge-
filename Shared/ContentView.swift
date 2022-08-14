//
//  ContentView.swift
//  Shared
//
//  Created by Bernhard Kratky on 09.08.22.
//

import SwiftUI



struct ContentView: View {
   
    var cars: [Car]  = Car.Car
    var body: some View {
    
     
            // List dos not work
        List(cars, children: \.cars) { row in
            
                
            }
        }
    
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
