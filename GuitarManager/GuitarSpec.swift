//
//  GuitarSpec.swift
//  GuitarManager
//
//  Created by junginsung on 2016. 9. 11..
//  Copyright © 2016년 junginsung. All rights reserved.
//

import Foundation

class GuitarSpec : InstrumentSpec{
    
    var numStrings: Int?
    
    init(_ builder:Builder,
         _ model:String,
         _ type:Type,
         _ numStrings:Int,
         _ backWood:Wood,
         _ topWood:Wood)
    {
        super.init(builder, model, type, backWood, topWood)
        self.numStrings = numStrings
    }
    
    override func showPrint()->String
    {
        var result = ""
        
        result += super.showPrint()
        result += "numStrings:\(self.numStrings!)\n"
        
        return result
    }
    
    func getNumStrings() -> Int? {
        return numStrings
    }
   
    override func matches(_ otherSpec:InstrumentSpec) -> Bool{
        if  !super.matches(otherSpec) {
            return false
        }
        
        let spec = otherSpec as! GuitarSpec
        if numStrings != spec.getNumStrings(){
            return false
        }

        return true;
    }
}
