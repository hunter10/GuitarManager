//
//  Style.swift
//  GuitarManager
//
//  Created by junginsung on 2016. 10. 8..
//  Copyright © 2016년 junginsung. All rights reserved.
//

import Foundation

enum Style{
    case A, F
    
    func toString() -> String? {
        switch self {
        case .A: return "A"
        case .F: return "F"
        }
    }
}
