//
//  Inventory.swift
//  GuitarManager
//
//  Created by junginsung on 2016. 8. 29..
//  Copyright © 2016년 junginsung. All rights reserved.
//

import Foundation

class Inventory{
    
    var inventory = [Instrument]()
    
    func addInstrument(SerialNumber serialNumber:String,
                       Price price:Double,
                       Spec spec:InstrumentSpec
                      )
    {
        let instrument:Instrument = Instrument(SerialNumber:serialNumber, Price:price, Spec:spec)
        inventory += [instrument]
    }
    
    func  showList() -> String {
        
        var result = ""
        for item in inventory
        {
            result += item.showPrint()
        }
        
        return result
    }
    
    func get(_ serialNumber:String) -> Instrument?{
        for instrument in inventory{
            if (instrument.getSerialNumber() == serialNumber){
                return instrument
            }
        }
        return nil
    }
    
    func search(_ searchSpec:InstrumentSpec) -> [Instrument]? {
        var matchingInstruments = [Instrument]()
        for instrument in inventory{
            if(instrument.getSpec().matches(searchSpec)){
                matchingInstruments += [instrument]
            }
        }
        
        return matchingInstruments
    }
        
}
