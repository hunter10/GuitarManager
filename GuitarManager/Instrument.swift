//
//  Instrument.swift
//  GuitarManager
//
//  Created by junginsung on 2016. 10. 8..
//  Copyright © 2016년 junginsung. All rights reserved.
//

import Foundation

class Instrument {
    var serialNumber:String?
    var price:Double?
    var spec:InstrumentSpec?
    
    init()
    {
        self.serialNumber = ""
        self.price = 0
        self.spec = nil
    }
    
    init(_ serialNumber:String,
         _ price:Double,
         _ spec:InstrumentSpec)
    {
        self.serialNumber = serialNumber
        self.price = price
        self.spec = spec
    }
    
    func showPrint()->String
    {
        var result = ""
        
        result += "SerialNumber:\(self.serialNumber)\n"
        result += "Price:\(self.price)\n"
        result += spec!.showPrint()
        
        return result
    }
    
    func getSerialNumber()->String?{
        return serialNumber
    }
    
    func getPrice() -> Double? {
        return price
    }
    
    func setPrice(_ newPrice:Float){
        price = Double(newPrice)
    }
    
    func getSpec() -> InstrumentSpec {
        return spec!
    }
}
