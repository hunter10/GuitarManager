//
//  Inventory.swift
//  GuitarManager
//
//  Created by junginsung on 2016. 8. 29..
//  Copyright © 2016년 junginsung. All rights reserved.
//

import Foundation

class Inventory{
    
    var guitars = [Guitar]()
    
    func addGuitar(SerialNumber serialNumber:String,
                   Price price:Double,
                   Builder builder:Builder,
                   Model model:String,
                   Type type:Type,
                   NumStrings numStrings:Int,
                   BackWood backWood:Wood,
                   TopWood topWood:Wood)
    {
        let guitarSpec = GuitarSpec(builder, model, type, numStrings, backWood, topWood)
        let guitar = Guitar(serialNumber, price, guitarSpec)
        guitars += [guitar]
    }
    
    func getGuitar(_ serialNumber:String) -> Guitar?{
        for guitar in guitars{
            if (guitar.getSerialNumber() == serialNumber){
                return guitar
            }
        }
        return nil
    }
    
    func search(_ searchSpec:GuitarSpec) -> [Guitar]?{
        
        var matchingGuitars = [Guitar]()
        
        for guitar in guitars{
            
            if guitar.getSpec().matches(searchSpec){
                matchingGuitars += [guitar]
            }
        }
        
        return matchingGuitars
    }
    
}
