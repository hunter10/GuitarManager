//
//  main.swift
//  GuitarManager
//
//  Created by junginsung on 2016. 8. 28..
//  Copyright © 2016년 junginsung. All rights reserved.
//

import Foundation




var inventory = Inventory()
//inventory.addInstrument(SerialNumber: "V95693",
//                        Price: 1499.95,
//                        Spec:GuitarSpec(.FENDER, "Stratocastor", .ELECTRIC, 6, .ALDER, .ALDER)
//                        )
//
//inventory.addInstrument(SerialNumber: "V9512",
//                        Price: 1549.95,
//                        Spec:GuitarSpec(.FENDER, "Stratocastor", .ELECTRIC, 11, .ALDER, .ALDER)
//                        )
//
//inventory.addInstrument(SerialNumber: "V9513",
//                        Price: 1549.95,
//                        Spec:GuitarSpec(.FENDER, "Stratocastor", .ELECTRIC, 12, .MAPLE, .ALDER)
//                        )

inventory.addInstrument(SerialNumber: "9019920",
                        Price: 5459.99,
                        Spec:MandolinSpec(.GIBSON, "F5-G", .ELECTRIC, .F, .MAPLE, .MAPLE)
)


//var whatErinLikes = GuitarSpec(
//                           .FENDER,
//                           "Stratocastor",
//                           .ELECTRIC,
//                           12,
//                           .MAPLE,
//                           .ALDER)

var whatErinLikes = MandolinSpec(
                           .GIBSON,
                           "F5-G",
                           .ELECTRIC,
                           .F,
                           .MAPLE,
                           .MAPLE)


print(whatErinLikes.showPrint())
print()

let matchingInstrument = inventory.search(whatErinLikes)
//if matchingGuitars != nil && ((matchingGuitars?.count)!) != 0{
//    print("Erin, you might like these guitars:")
//    for guitar in matchingGuitars!{
//        var spec = guitar.getSpec() as! GuitarSpec
//        print(" \(spec.getBuilder()!), \(spec.getModel()!), \(spec.getType()!), \(guitar.getSerialNumber()!), $\(guitar.getPrice()!), \(spec.getNumStrings()!)")
//    }
//    
//}else{
//    print("Sorry, Erin we have nothing for you.")
//}


if matchingInstrument != nil && ((matchingInstrument?.count)!) != 0{
    print("Erin, you might like these matchingInstrument:")
    for mandolin in matchingInstrument!{
        var spec = mandolin.getSpec() as! MandolinSpec
        print(" \(spec.getBuilder()!), \(spec.getModel()!), \(spec.getType()!), \(mandolin.getSerialNumber()!), $\(mandolin.getPrice()!), \(spec.getStyle()!)")
    }
    
}else{
    print("Sorry, Erin we have nothing for you.")
}





