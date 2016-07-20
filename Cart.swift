//
//  Cart.swift
//  swift-shopping-cart
//
//  Created by Cenker Demir on 7/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Cart {
    var items: [Item] = []
    
    func totalPriceInCents() -> Int {
        var totalPrice = 0
        for item in self.items {
            totalPrice += item.priceInCents
        }
        return totalPrice
    }
    
    func addItem(item: Item) {
        self.items.append(item)
    }
    
    func removeItem(item: Item) {
        for each in self.items {
            if item == each {
                if let index = self.items.indexOf(item) {
                    self.items.removeAtIndex(index)
                }
            }
        }
    }

    func itemsWithName(name: String) -> [Item] {
        var itemsWithName : [Item] = []
        for item in self.items {
            if  item.name == name {
                itemsWithName.append(item)
            }
        }
        return itemsWithName
    }
    
    func itemsWithMinimumPriceInCents(price: Int) -> [Item]{
        var itemsWithMinPrice: [Item] = []
        for item in self.items {
            if item.priceInCents >= price {
                itemsWithMinPrice.append(item)
            }
        }
        return itemsWithMinPrice
    }
    
    func itemsWithMaximumPriceInCents(price: Int) -> [Item] {
        var itemsWithMaxPrice: [Item] = []
        for item in self.items {
            if item.priceInCents <= price {
                itemsWithMaxPrice.append(item)
            }
        }
        return itemsWithMaxPrice
    }
}


