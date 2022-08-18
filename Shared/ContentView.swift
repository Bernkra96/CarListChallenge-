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
        
        NavigationView {
        
        VStack {
            Text ("Car List ")
                .font(.title)
                .fontWeight(.bold)
            
            List {
                ForEach(cars, id: \.model) { cars in
                  
                    NavigationLink( destination: DetailView(car: cars)) {  //list start
                    
                    VStack (spacing: 8) {
                        
                        
                        
                        HStack {     // Car image / make and model
                            Image ("\(cars.model)")
                                .resizable(resizingMode: .stretch)
                                .aspectRatio(contentMode: .fit)
                                .accessibilityLabel(" Image of \(cars.make)   \(cars.model)")
                                .cornerRadius(20)
                            
                            Text ("\(cars.make)    \(cars.model) ")
                                .font(.title3)
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                        }
                    }
                     
                    }

                }
            }
        }
    }
}
}
    
    //    }
//}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .preferredColorScheme(.light)
            
        }
    }
}
