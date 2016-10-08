//
//  Wood.swift
//  GuitarManager
//
//  Created by junginsung on 2016. 9. 4..
//  Copyright © 2016년 junginsung. All rights reserved.
//

import Foundation

enum Wood{
    case INDIAN_ROSEWOOD, BRAZILIAN_ROSEWOOD, MAHOGANY, MAPLE, COCOBOLO, CEDAR, ADIRONDACK, ALDER, SITKA
    
    func  toString() -> String? {
        switch self {
            case .INDIAN_ROSEWOOD: return "Indian RoseWood"
            case .BRAZILIAN_ROSEWOOD: return "BRAZILIAN_ROSEWOOD"
            case .MAHOGANY: return "MAHOGANY"
            case .MAPLE: return "IMAPLE"
            case .COCOBOLO: return "COCOBOLO"
            case .CEDAR: return "CEDAR"
            case .ADIRONDACK: return "ADIRONDACK"
            case .ALDER: return "ALDER"
            case .SITKA: return "SITKA"            
            
        }
    }
}
