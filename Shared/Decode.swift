//
//  Decode.swift
//  Car List Challenge CwC
//
//  Created by Bernhard Kratky on 09.08.22.
//

import Foundation


extension Bundle {
    
    func decode(_ file: String ) -> [String: car] {
        
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("faild to locate \(file) in bundle.")
        }
        guard let data = try? Data (contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle")
        }
            let decoder = JSONDecoder()
        
        guard let loaded = try? decoder.decode([String: car].self , from: data) else {
            fatalError("faild do decode \(file ) from bundle")
        }
        return loaded
    }
    
    
}
