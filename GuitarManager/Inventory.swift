//
//  Inventory.swift
//  GuitarManager
//
//  Created by junginsung on 2016. 8. 29..
//  Copyright © 2016년 junginsung. All rights reserved.
//

import Foundation

class Inventory{
    
    var inventory = [Instrument?]()
    
    func addInstrument(SerialNumber serialNumber:String,
                       Price price:Double,
                       Spec spec:InstrumentSpec
                      )
    {
        var instrument:Instrument? = nil
        
        if spec is GuitarSpec {
            instrument = Guitar(serialNumber, price, (spec as! GuitarSpec))
            
        } else {
            instrument = Mandolin(serialNumber, price, (spec as! MandolinSpec))
        }
        
        inventory += [instrument]
    }
    
    func get(_ serialNumber:String) -> Instrument?{
        for instrument in inventory{
            if (instrument?.getSerialNumber() == serialNumber){
                return instrument
            }
        }
        return nil
    }
    
    func search(_ searchSpec:GuitarSpec) -> [Guitar]?{
        var matchingGuitars = [Guitar]()
        for guitar in inventory{
            if (guitar?.getSpec().matches(searchSpec))!{
                matchingGuitars += [guitar as! Guitar]
            }
        }
        
        return matchingGuitars
    }
    
    func search(_ searchSpec:MandolinSpec) -> [Mandolin]?{
        var matchingMandolins = [Mandolin]()
        for mandolin in inventory {
            
            if (mandolin?.getSpec().matches(searchSpec))!{
                matchingMandolins += [mandolin as! Mandolin]
            }
        }
    
        return matchingMandolins
    }
    
}
