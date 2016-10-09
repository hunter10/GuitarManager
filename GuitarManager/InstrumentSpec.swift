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
    var backWood:Wood?
    var topWood:Wood?
    
    init(_ builder:Builder,
         _ model:String,
         _ type:Type,
         _ backWood:Wood,
         _ topWood:Wood)
    {
        self.builder = builder
        self.model = model
        self.type = type
        self.backWood = backWood
        self.topWood = topWood
    }
    
    func showPrint()->String
    {
        var result = ""
        
        result += "Builder:\(self.builder!)\n"
        result += "model:\(self.model!)\n"
        result += "type:\(self.type!)\n"
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
    
    func getBackWood()->Wood? {
        return backWood
    }
    
    func getTopWood()->Wood? {
        return topWood
    }
    
    func matches(_ otherSpec:InstrumentSpec)->Bool{
        
        if (builder != otherSpec.getBuilder()){
            print("builder false")
            return false
        }
    
        if( (model == nil) || (model?.isEmpty)! ||
            (model != otherSpec.getModel()) ){
            print("model false")
            return false
        }
        
        if(type != otherSpec.getType()){
            print("type false")
            return false
        }
    
        if (backWood != otherSpec.getBackWood()){
            print("backwood false")
            return false
        }
        
        if (topWood != otherSpec.getTopWood()){
            print("topwood false")
            return false
        }
        
        return true
    }
}
