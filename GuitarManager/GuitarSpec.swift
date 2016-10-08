//
//  GuitarSpec.swift
//  GuitarManager
//
//  Created by junginsung on 2016. 9. 11..
//  Copyright © 2016년 junginsung. All rights reserved.
//

import Foundation

class GuitarSpec : InstrumentSpec{
//    var builder:Builder?
//    var model:String? = ""
//    var type:Type?
//    var numStrings:Int?
//    var backWood:Wood?
//    var topWood:Wood?
    
    override init(_ builder:Builder,
         _ model:String,
         _ type:Type,
         _ numStrings:Int,
         _ backWood:Wood,
         _ topWood:Wood)
    {
        super.init(builder, model, type, numStrings, backWood, topWood)
        
//        self.builder = builder
//        self.model = model
//        self.type = type
//        self.numStrings = numStrings
//        self.backWood = backWood
//        self.topWood = topWood
    }
    
    override func showPrint()->String
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
    
//    func getBuilder()->Builder? {
//        return builder
//    }
//    
//    func getModel()->String? {
//        return model
//    }
//    
//    func getType()->Type? {
//        return type
//    }
//    
//    func getNumStrings() -> Int? {
//        return numStrings
//    }
//    
//    func getBackWood()->Wood? {
//        return backWood
//    }
//    
//    func getTopWood()->Wood? {
//        return topWood
//    }
    
    func matches(_ otherSpec:GuitarSpec)->Bool{
        
        //print("builder:\(builder!) other builder:\(otherSpec.getBuilder()!)")
        if (builder != otherSpec.getBuilder()){
            print("builder false")
            return false
        }
        
        //print("model:\(model!) other model:\(otherSpec.getModel()!)")
        if( (model == nil) || (model?.isEmpty)! ||
            (model != otherSpec.getModel()) ){
            print("model false")
            return false
        }
        
        //print("type:\(type!) other type:\(otherSpec.getType()!)")
        if(type != otherSpec.getType()){
            //print("type false")
            return false
        }
        
        if numStrings != otherSpec.getNumStrings(){
            return false
        }
        
        //print("backWood:\(backWood!) other backWood:\(otherSpec.getBackWood()!)")
        if (backWood != otherSpec.getBackWood()){
            //print("backwood false")
            return false
        }
        
        //print("backWood:\(backWood!) other backWood:\(otherSpec.getBackWood()!)")
        if (topWood != otherSpec.getTopWood()){
            return false
        }

        return true;
    }
}
