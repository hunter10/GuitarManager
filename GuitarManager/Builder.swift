//
//  Builder.swift
//  GuitarManager
//
//  Created by junginsung on 2016. 9. 4..
//  Copyright © 2016년 junginsung. All rights reserved.
//

import Foundation

enum Builder{
    case FENDER, MARTIN, GIBSON, COLLINGS, OLSON, RYAN, PRS, ANY
    
    func  toString() -> String? {
        switch  self {
            case .FENDER: return "Fender"
            case .MARTIN: return "Martin"
            case .GIBSON: return "GIBSON"
            case .COLLINGS: return "COLLINGS"
            case .OLSON: return "OLSON"
            case .RYAN: return "RYAN"
            case .PRS: return "PRS"
            case .ANY: return "ANY"
            
        }
    }
}
