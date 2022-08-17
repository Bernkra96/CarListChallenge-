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
                  
                    NavigationLink( destination: DetailView(car: cars)) {
                    
                    VStack (spacing: 8) {
                        
                        
                        
                        HStack {
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
                        //
                        //                        VStack() {
                        //
                        //                            Text (" Customer Price.: \(cars.customerPrice) $ ")
                        //                                .font(.body)
                        //                                .fontWeight(.semibold)
                        //                                .multilineTextAlignment(.center)
                        //
                        //
                        //                            Text (" Market Price.: \(cars.marketPrice) $ ")
                        //                                .fontWeight(.semibold)
                        //                                .multilineTextAlignment(.center)
                        //                                .font(.body)
                        //                        }
                        //
                        //
                        //                        VStack (alignment: .center, spacing: 4.0) {
                        //                            let cons = cars.consList.joined(separator: " " )
                        //                            let pros = cars.prosList.joined(separator: " " )
                        //
                        //                            HStack {
                        //                                Text("Car Pros")
                        //                                    .font(.title2)
                        //                                    .fontWeight(.bold)
                        //
                        //
                        //                                Image(systemName: "hand.thumbsup.fill")
                        //                                    .renderingMode(.original)
                        //                                    .foregroundColor(.orange)
                        //                                    .frame(width: 25.0, height: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        //
                        //
                        //
                        //                            }
                        //                            Text (String ("\(pros)"))
                        //                                .font(.body)
                        //                                .fontWeight(.medium)
                        //                                .multilineTextAlignment(.center)
                        //                                .lineLimit(14)
                        //
                        //
                        //
                        //                            HStack() {
                        //                                Text("Car Cons")
                        //                                    .font(.title2)
                        //                                    .fontWeight(.bold)
                        //
                        //                                Image(systemName: "hand.thumbsdown.fill")
                        //                                    .renderingMode(.original)
                        //                                    .foregroundColor(.orange)
                        //                                    .frame(width: 25.0, height: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        //
                        //
                        //                            }
                        //                            Text (String ("\(cons)"))
                        //                                .fontWeight(.medium)
                        //                                .multilineTextAlignment(.center)
                        //                                .lineLimit(12)
                        //                                .font(.body)
                        //
                        //
                        //                        }
                        //                        .frame(width: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/185.0/*@END_MENU_TOKEN@*/)
                        //
                        //
                        //                        VStack {
                        //
                        //                            HStack {
                        //
                        //                                Image(systemName: cars.rating < 1 ? "star" :  "star.fill" )
                        //                                    .resizable()
                        //                                    .aspectRatio(contentMode: .fit)
                        //                                    .foregroundColor(cars.rating < 1 ? .gray  : .orange )
                        //                                    .frame(width: 40.0)
                        //                                Image(systemName: cars.rating < 2 ? "star" :  "star.fill" )
                        //                                    .resizable()
                        //                                    .aspectRatio(contentMode: .fit)
                        //                                    .foregroundColor(cars.rating < 2 ? .gray  : .orange )
                        //                                    .frame(width: 40.0)
                        //
                        //                                Image(systemName: cars.rating < 3 ? "star" :  "star.fill" )
                        //                                    .resizable()
                        //                                    .aspectRatio(contentMode: .fit)
                        //                                    .foregroundColor(cars.rating < 3 ? .gray  : .orange )
                        //                                    .frame(width: 40.0)
                        //
                        //
                        //                                Image(systemName: cars.rating < 4 ? "star" :  "star.fill" )
                        //                                    .resizable()
                        //                                    .aspectRatio(contentMode: .fit)
                        //                                    .foregroundColor(cars.rating < 4 ? .gray  : .orange )
                        //                                    .frame(width: 40.0)
                        //
                        //
                        //                                Image(systemName: cars.rating < 5 ? "star" :  "star.fill" )
                        //                                    .resizable()
                        //                                    .aspectRatio(contentMode: .fit)
                        //                                    .foregroundColor(cars.rating < 5 ? .gray  : .orange )
                        //                                    .frame(width: 40.0)
                        //
                        
                    }
//                    Text ("\(cars.rating) 0f 5")
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
