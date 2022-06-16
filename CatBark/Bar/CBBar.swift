//
//  StatusBar.swift
//  CatBark
//
//  Created by Zhuo FENG on 2022/6/16.
//

import Foundation
import AppKit

class CBBar {
    private var items: [CBBarItem]
    private var nsStatusItems: [NSStatusItem] = []
    
    init(_ items: [CBBarItem]) {
        self.items = items
        
        for item in items {
            self.nsStatusItems.append(item.toNsStatusItem())
        }
    }
}
