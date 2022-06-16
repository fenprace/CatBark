//
//  CBBarItem.swift
//  CatBark
//
//  Created by Zhuo FENG on 2022/6/16.
//

import Foundation
import AppKit

struct CBBarItemOpts {
    var title: String
    var menu: CBMenu
    var length: CGFloat?
}

class CBBarItem {
    var opts: CBBarItemOpts
    var nsStatusItem: NSStatusItem?
    
    init(_ opts: CBBarItemOpts) {
        self.opts = opts
    }
    
    func toNsStatusItem() -> NSStatusItem {
        self.nsStatusItem = NSStatusBar.system.statusItem(withLength: opts.length ?? NSStatusItem.variableLength)
        self.nsStatusItem!.button?.title = opts.title
        self.nsStatusItem!.menu = opts.menu.toNSMenu(target: self)
        return self.nsStatusItem!
    }
    
    @objc func action(sender: NSMenuItem) {
        for item in opts.menu.items {
            if item.nsMenuItem == sender {
                print("\(sender.title) clicked!")
                item.action?()
            }
        }
    }
}
