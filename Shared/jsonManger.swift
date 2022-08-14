//
//  Car.swift
//  Car List Challenge CwC
//
//  Created by Bernhard Kratky on 09.08.22.
//
import Foundation

// data save of Car
struct Car:  Codable  ,    Identifiable    {
    var consList: [String]
    var customerPrice: Int
    var make: String
    var marketPrice: Int
    var model: String
    var prosList: [String]
    var rating: Int
    
  
    
    let id: String
    static let allCars : [Car] = Bundle.main.decode(file: "car_list.json")
    static let CarTest: Car = allCars [0]
    static var Car :  [Car]?
    
}


//Json Decoder
extension Bundle {
//   Find Json
    
    func decode< T: Decodable >(file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Cold not find \(file) in the project ! ")
        }
        
//        Load Json
        guard let data = try?  Data(contentsOf: url ) else {
            fatalError("Cold not load \(file) in the project ! ")
            }
     //decode Json
        
        
        let decoder = JSONDecoder()
        
        guard let loadedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Cold not decode \(file) in the project ! ")
        }
        
        return loadedData
    }
}
