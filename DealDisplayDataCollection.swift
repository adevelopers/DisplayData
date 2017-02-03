//
//  DealDisplayDataCollection.swift
//  DD
//
//  Created by Sam on 16/01/2017.
//  Copyright © 2017 Samvel Mejlumyan. All rights reserved.
//

import Foundation

class DealDisplayDataCollection {
    
    fileprivate(set) var data = DealGridDisplayData()
    
    func addDeals(_ items: [Deal]) {
        var currentSortValue = -1
        
        for item in items {
            
            let deal = DealGridDisplayItem(entity: item)
            
            /// Special manipulation for my case
            /// Sorting sections by expiration days
            if currentSortValue != item.expiration {
                
                let title: String = (item.expiration > 0 ? item.expiration.daysToString() : "Без")+" просрочки"
                let section = DealGridDisplaySection(name: title, items: [])
                data.sections.append(section)
                
                currentSortValue = item.expiration
            }
            
            data.sections[data.sections.count-1].items.append(deal)
            
        }
        
        data.sections.reverse()
        
    }

    
}
