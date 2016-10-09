//
//  MandolinSpec.swift
//  GuitarManager
//
//  Created by junginsung on 2016. 10. 8..
//  Copyright © 2016년 junginsung. All rights reserved.
//

import Foundation

class MandolinSpec : InstrumentSpec{
    
    var style: Style?
    
    init(_ builder:Builder,
         _ model:String,
         _ type:Type,
         _ style:Style,
         _ backWood:Wood,
         _ topWood:Wood)
    {
        super.init(builder, model, type, backWood, topWood)
        self.style = style
    }
    
    override func showPrint()->String
    {
        var result = ""
        
        result += super.showPrint()
        result += "style:\(self.style!)\n"
        
        return result
    }
    
    func getStyle() -> Style? {
        return style
    }
    
    override func matches(_ otherSpec:InstrumentSpec) -> Bool{
        if  !super.matches(otherSpec) {
            return false
        }
        
        let spec = otherSpec as! MandolinSpec
        if style != spec.getStyle(){
            return false
        }
        
        return true;
    }
}
