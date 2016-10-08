//
//  main.swift
//  GuitarManager
//
//  Created by junginsung on 2016. 8. 28..
//  Copyright © 2016년 junginsung. All rights reserved.
//

import Foundation




var inventory = Inventory()
inventory.addGuitar(SerialNumber: "V95693",
                    Price: 1499.95,
                    Builder: .FENDER,
                    Model: "Stratocastor",
                    Type: .ELECTRIC,
                    NumStrings: 6,
                    BackWood: .ALDER,
                    TopWood: .ALDER)

inventory.addGuitar(SerialNumber: "V9512",
                    Price: 1549.95,
                    Builder: .FENDER,
                    Model: "Stratocastor",
                    Type: .ELECTRIC,
                    NumStrings: 11,
                    BackWood: .ALDER,
                    TopWood: .ALDER)

inventory.addGuitar(SerialNumber: "V9513",
                    Price: 1549.95,
                    Builder: .FENDER,
                    Model: "Stratocastor",
                    Type: .ELECTRIC,
                    NumStrings: 12,
                    BackWood: .MAPLE,
                    TopWood: .ALDER)


var whatErinLikes = GuitarSpec(
                           .FENDER,
                           "Stratocastor",
                           .ELECTRIC,
                           12,
                           .MAPLE,
                           .ALDER)

print(whatErinLikes.showPrint())
print()

let matchingGuitars = inventory.search(whatErinLikes)
if matchingGuitars != nil && ((matchingGuitars?.count)!) != 0{
    
    //print((matchingGuitars?.count)!)
    
    print("Erin, you might like these guitars:")
    for guitar in matchingGuitars!{
        var spec = guitar.getSpec()
        print(" \(spec.getBuilder()!), \(spec.getModel()!), \(spec.getType()!), \(guitar.getSerialNumber()!), $\(guitar.getPrice()!), \(spec.getNumStrings()!)")
    }
    
}else{
    print("Sorry, Erin we have nothing for you.")
}





