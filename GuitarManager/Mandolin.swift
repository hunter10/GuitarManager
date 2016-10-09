//
//  Mandolin.swift
//  GuitarManager
//
//  Created by junginsung on 2016. 10. 8..
//  Copyright © 2016년 junginsung. All rights reserved.
//

import Foundation

class Mandolin : Instrument {
    
    init(_ serialNumber:String,
         _ price:Double,
         _ spec:MandolinSpec)
    {
        super.init(serialNumber, price, spec)
    }
}
