//
//  DealGridDisplayData.swift
//  DD
//
//  Created by Sam on 16/01/2017.
//  Copyright © 2017 Samvel Mejlumyan. All rights reserved.
//

import Foundation

struct DealGridDisplayData {
    
    var sections: [DealGridDisplaySection] = []
}


struct DealGridDisplaySection {
    
    let name: String
    var items: [DealGridDisplayItem]
}
