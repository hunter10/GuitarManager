//
//  main.swift
//  GuitarManager
//
//  Created by junginsung on 2016. 8. 28..
//  Copyright © 2016년 junginsung. All rights reserved.
//

import Foundation

var inventory = Inventory()

inventory.addInstrument(SerialNumber: "11277",
                        Price: 3999.95,
                        Spec:InstrumentSpec(["instrumentType": InstrumentType.GUITAR as Any,
                                             "builder": Builder.COLLINGS as Any,
                                             "model": "CJ" as Any,
                                             "type": Type.ACOUSTIC as Any,
                                             "numStrings": 7 as Any,
                                             "topWood": Wood.INDIAN_ROSEWOOD as Any,
                                             "backWood": Wood.SITKA as Any]
                                            )
                        )

inventory.addInstrument(SerialNumber: "122784",
                        Price: 5495.95,
                        Spec:InstrumentSpec(["instrumentType": InstrumentType.GUITAR as Any,
                                             "builder": Builder.MARTIN as Any,
                                             "model": "D-18" as Any,
                                             "type": Type.ACOUSTIC as Any,
                                             "numStrings": 6 as Any,
                                             "topWood": Wood.MAHOGANY as Any,
                                             "backWood": Wood.ADIRONDACK as Any]
                                            )
                        )

inventory.addInstrument(SerialNumber: "V95693",
                        Price: 1499.95,
                        Spec:InstrumentSpec(["instrumentType": InstrumentType.GUITAR as Any,
                                             "builder": Builder.FENDER as Any,
                                             "model": "Stratocastor" as Any,
                                             "type": Type.ELECTRIC as Any,
                                             "numStrings": 6 as Any,
                                             "topWood": Wood.ALDER as Any,
                                             "backWood": Wood.ALDER as Any]
    )
)

inventory.addInstrument(SerialNumber: "V9512",
                        Price: 1549.95,
                        Spec:InstrumentSpec(["instrumentType": InstrumentType.GUITAR as Any,
                                             "builder": Builder.FENDER as Any,
                                             "model": "Stratocastor" as Any,
                                             "type": Type.ELECTRIC as Any,
                                             "numStrings": 6 as Any,
                                             "topWood": Wood.ALDER as Any,
                                             "backWood": Wood.ALDER as Any]
    )
)

inventory.addInstrument(SerialNumber: "70108276",
                        Price: 2295.95,
                        Spec:InstrumentSpec(["instrumentType": InstrumentType.GUITAR as Any,
                                             "builder": Builder.GIBSON as Any,
                                             "model": "Les Paul" as Any,
                                             "type": Type.ELECTRIC as Any,
                                             "numStrings": 6 as Any,
                                             "topWood": Wood.MAPLE as Any,
                                             "backWood": Wood.MAPLE as Any]
    )
)

inventory.addInstrument(SerialNumber: "82765501",
                        Price: 1890.95,
                        Spec:InstrumentSpec(["instrumentType": InstrumentType.GUITAR as Any,
                                             "builder": Builder.GIBSON as Any,
                                             "model": "SG '61 Reissue" as Any,
                                             "type": Type.ELECTRIC as Any,
                                             "numStrings": 6 as Any,
                                             "topWood": Wood.MAHOGANY as Any,
                                             "backWood": Wood.MAHOGANY as Any]
    )
)

inventory.addInstrument(SerialNumber: "9019920",
                        Price: 5495.99,
                        Spec:InstrumentSpec(["instrumentType": InstrumentType.MANDOLIN as Any,
                                             "builder": Builder.GIBSON as Any,
                                             "model": "F-5G" as Any,
                                             "type": Type.ACOUSTIC as Any,
                                             //"numStrings": 6 as Any,
                                             "topWood": Wood.MAPLE as Any,
                                             "backWood": Wood.MAPLE as Any]
    )
)


inventory.addInstrument(SerialNumber: "8900231",
                        Price: 2845.95,
                        Spec:InstrumentSpec(["instrumentType": InstrumentType.BANJO as Any,
                                             "builder": Builder.GIBSON as Any,
                                             "model": "RB-3" as Any,
                                             "type": Type.ACOUSTIC as Any,
                                             "numStrings": 5 as Any,
                                             //"topWood": Wood.MAPLE as Any,
                                             "backWood": Wood.MAPLE as Any]
    )
)



inventory.addInstrument(SerialNumber: "8900232",
                        Price: 2845.95,
                        Spec:InstrumentSpec(["instrumentType": InstrumentType.VIOLIN as Any,
                                             "builder": Builder.GIBSON as Any,
                                             "model": "RB-3" as Any,
                                             "type": Type.ACOUSTIC as Any,
                                             "numStrings": 5 as Any,
                                             //"topWood": Wood.MAPLE as Any,
                                             "backWood": Wood.MAPLE as Any,
                                             "date": "1990.1.1" as Any]
    )
)



print(inventory.showList())
print("--------------------")

let matchData:Instrument = Instrument(SerialNumber: "122784",
                                      Price: 5495.95,
                                      Spec:InstrumentSpec(["instrumentType": InstrumentType.GUITAR as Any,
                                                           "builder": Builder.MARTIN as Any,
                                                           "model": "D-18" as Any,
                                                           "type": Type.ACOUSTIC as Any,
                                                           "numStrings": 6 as Any,
                                                           "topWood": Wood.MAHOGANY as Any,
                                                           "backWood": Wood.ADIRONDACK as Any,
                                                           "date": "1990.1.1" as Any]
                                                         )
                                     )

//let matchSpec:InstrumentSpec = InstrumentSpec(["builder": Builder.GIBSON as Any,
//                                               "backWood": Wood.MAPLE as Any]
                                               //"numStrings": 5]
//                                              )

let matchSpec:InstrumentSpec = InstrumentSpec(["instrumentType": InstrumentType.VIOLIN as Any]
                                               
    //"numStrings": 5]
)


var findInstruments = inventory.search(matchSpec)
if (findInstruments?.count)! <= 0
{
    print("Not Found")
}
else
{
    print("Matches!! \((findInstruments?.count)!)")
    for item in findInstruments!
    {
        print(item.showPrint())
        print()
    }
}


