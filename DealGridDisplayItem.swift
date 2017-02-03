//
//  DealGridDisplayItem.swift
//  DD
//
//  Created by Sam on 16/01/2017.
//  Copyright © 2017 Samvel Mejlumyan. All rights reserved.
//

import Foundation

struct DealGridDisplayItem {
    
    let name: String
    let id: String
    let payment: String
    let photo: Data?
    let expiration: Int
    
    
    init(entity: Deal) {
        self.name = entity.client.fullName
        self.id = String(entity.id)
        self.payment = "Платёж: "+FormatterService().format(style: .currency, string: entity.calcPayment)
        self.photo = entity.client.photo
        self.expiration = entity.expiration
    }
}

