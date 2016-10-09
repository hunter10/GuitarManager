//
//  Guitar.swift
//  GuitarManager
//
//  Created by junginsung on 2016. 8. 28..
//  Copyright © 2016년 junginsung. All rights reserved.
//

import Foundation

class Guitar : Instrument {
    
    init(_ serialNumber:String,
         _ price:Double,
         _ spec:GuitarSpec)
    {
        super.init(serialNumber, price, spec)
    }
}
