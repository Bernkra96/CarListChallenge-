//
//  DetailView.swift
//  Car List Challenge CwC
//
//  Created by Bernhard Kratky on 17.08.22.
//

import SwiftUI

struct DetailView: View {
    var car: Car
    
    var body: some View {
        
        HStack {
            Image ("\(car.model)")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .accessibilityLabel(" Image of \(car.make)   \(car.model)")
                .cornerRadius(20)
            
            Text ("\(car.make)    \(car.model) ")
                .font(.title3)
                .fontWeight(.bold)
                .multilineTextAlignment(.center)
        }
    
        
        
        VStack() {
            
            Text (" Customer Price.: \(car.customerPrice) $ ")
                .font(.body)
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
            
            
            Text (" Market Price.: \(car.marketPrice) $ ")
                .fontWeight(.semibold)
                .multilineTextAlignment(.center)
                .font(.body)
        }
        
        
        VStack (alignment: .center, spacing: 4.0) {
            let cons = car.consList.joined(separator: " " )
            let pros = car.prosList.joined(separator: " " )
            
            HStack {
                Text("Car Pros")
                    .font(.title2)
                    .fontWeight(.bold)
                
                
                Image(systemName: "hand.thumbsup.fill")
                    .renderingMode(.original)
                    .foregroundColor(.orange)
                    .frame(width: 25.0, height: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                
                
                
            }
            Text (String ("\(pros)"))
                .font(.body)
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
                .lineLimit(14)
            
            
            
            HStack() {
                Text("Car Cons")
                    .font(.title2)
                    .fontWeight(.bold)
                
                Image(systemName: "hand.thumbsdown.fill")
                    .renderingMode(.original)
                    .foregroundColor(.orange)
                    .frame(width: 25.0, height: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                
                
            }
            Text (String ("\(cons)"))
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
                .lineLimit(12)
                .font(.body)
            
            
        }
        .frame(width: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/185.0/*@END_MENU_TOKEN@*/)
        
        
        VStack {
            
            HStack {
                
                Image(systemName: car.rating < 1 ? "star" :  "star.fill" )
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(car.rating < 1 ? .gray  : .orange )
                    .frame(width: 40.0)
                Image(systemName: car.rating < 2 ? "star" :  "star.fill" )
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(car.rating < 2 ? .gray  : .orange )
                    .frame(width: 40.0)
                
                Image(systemName: car.rating < 3 ? "star" :  "star.fill" )
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(car.rating < 3 ? .gray  : .orange )
                    .frame(width: 40.0)
                
                
                Image(systemName: car.rating < 4 ? "star" :  "star.fill" )
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(car.rating < 4 ? .gray  : .orange )
                    .frame(width: 40.0)
                
                
                Image(systemName: car.rating < 5 ? "star" :  "star.fill" )
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(car.rating < 5 ? .gray  : .orange )
                    .frame(width: 40.0)
                
                
                
                
            }
        }
        Text ("\(car.rating) 0f 5")
    }
}






struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(car: Car.CarTest)
    }
}
