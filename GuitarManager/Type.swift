//
//  Type.swift
//  GuitarManager
//
//  Created by junginsung on 2016. 9. 4..
//  Copyright © 2016년 junginsung. All rights reserved.
//

import Foundation

enum Type{
    case ACOUSTIC, ELECTRIC
    
    func toString() -> String? {
        switch self{
            case .ACOUSTIC: return "acoustic"
            case .ELECTRIC: return "electric"
            
        }
    }
}
