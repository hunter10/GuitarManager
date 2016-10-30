//
//  InstrumentType.swift
//  GuitarManager
//
//  Created by junginsung on 2016. 10. 30..
//  Copyright © 2016년 junginsung. All rights reserved.
//

import Foundation

enum InstrumentType{
    case GUITAR, BANJO, DOBRO, FIDDLE, BASS, MANDOLIN, VIOLIN
    
    func toString() -> String? {
        switch self{
        case .GUITAR: return "Guitar"
        case .BANJO: return "Banjo"
        case .DOBRO: return "Dobro"
        case .FIDDLE: return "Fiddle"
        case .BASS: return "Bass"
        case .MANDOLIN: return "Mandolin"
        case .VIOLIN: return "Violin"
        }
    }
}
