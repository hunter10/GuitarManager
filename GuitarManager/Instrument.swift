//
//  Instrument.swift
//  GuitarManager
//
//  Created by junginsung on 2016. 10. 8..
//  Copyright © 2016년 junginsung. All rights reserved.
//

import Foundation

class Instrument {
    private var serialNumber:String?
    private var price:Double?
    private var spec:InstrumentSpec?
    
    init()
    {
        self.serialNumber = ""
        self.price = 0
        self.spec = nil
    }
    
    init(SerialNumber serialNumber:String,
         Price price:Double,
         Spec spec:InstrumentSpec)
    {
        self.serialNumber = serialNumber
        self.price = price
        self.spec = spec
    }
    
    func showPrint()->String
    {
        var result = ""
        
        result += "SerialNumber:\(self.serialNumber!)\n"
        result += "Price:\(self.price!)\n"
        result += spec!.showPrint()
        result += "\n"
        
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
