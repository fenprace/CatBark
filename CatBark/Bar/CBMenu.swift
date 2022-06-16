//
//  CBMenu.swift
//  CatBark
//
//  Created by Zhuo FENG on 2022/6/16.
//

import Foundation
import AppKit

class CBMenuItem {
    var title: String;
    var image: NSImage?;
    var action: (() -> Void)?;
    var nsMenuItem: NSMenuItem?;
    
    init(title: String, image: NSImage?, action: (() -> Void)?) {
        self.title = title
        self.image = image
        self.action = action
    }
}

struct CBMenu {
    var items: [CBMenuItem];
    
    init() {
        self.items = []
    }
    
    init(_ items: [CBMenuItem]) {
        self.items = items
    }
    
    func toNSMenu(target: AnyObject?) -> NSMenu {
        let menu = NSMenu()
        
        for item in self.items {
            item.nsMenuItem = NSMenuItem()
            
            item.nsMenuItem?.title = item.title
            item.nsMenuItem?.image = item.image
            item.nsMenuItem?.target = target
            item.nsMenuItem?.action = #selector(CBBarItem.action)
            
            menu.addItem(item.nsMenuItem!)
        }
        
        return menu
    }
}
