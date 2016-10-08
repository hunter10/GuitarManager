//
//  InstrumentSpec.swift
//  GuitarManager
//
//  Created by junginsung on 2016. 10. 8..
//  Copyright © 2016년 junginsung. All rights reserved.
//

import Foundation

class InstrumentSpec
{
    var builder:Builder?
    var model:String? = ""
    var type:Type?
    var numStrings:Int?
    var backWood:Wood?
    var topWood:Wood?
    
    init(_ builder:Builder,
         _ model:String,
         _ type:Type,
         _ numStrings:Int,
         _ backWood:Wood,
         _ topWood:Wood)
    {
        self.builder = builder
        self.model = model
        self.type = type
        self.numStrings = numStrings
        self.backWood = backWood
        self.topWood = topWood
    }
    
    func showPrint()->String
    {
        var result = ""
        
        result += "Builder:\(self.builder!)\n"
        result += "model:\(self.model!)\n"
        result += "type:\(self.type!)\n"
        result += "numStrings:\(self.numStrings!)\n"
        result += "backWood:\(self.backWood!)\n"
        result += "topWood:\(self.topWood!)\n"
        
        //result += "getBuilder() : \(getBuilder()!)"
        
        return result
    }
    
    func getBuilder()->Builder? {
        return builder
    }
    
    func getModel()->String? {
        return model
    }
    
    func getType()->Type? {
        return type
    }
    
    func getNumStrings() -> Int? {
        return numStrings
    }
    
    func getBackWood()->Wood? {
        return backWood
    }
    
    func getTopWood()->Wood? {
        return topWood
    }
}
