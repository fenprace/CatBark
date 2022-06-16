//
//  AppDelegate.swift
//  CatBark
//
//  Created by Zhuo FENG on 2022/6/16.
//

import Foundation
import AppKit

class BarManager {
    static func getBar() -> CBBar {
        let cbMenuItem = CBMenuItem(
            title: "Quit",
            image: NSImage(systemSymbolName: "escape", accessibilityDescription: nil),
            action: {
                NSApp.terminate(nil)
            }
        )
        
        let cbMenu = CBMenu([cbMenuItem])
        
        let catBarItem = CBBarItem(CBBarItemOpts(title: "🐱", menu: cbMenu))
        let dogBarItem = CBBarItem(CBBarItemOpts(title: "🐶", menu: cbMenu))
        
        let cbBar = CBBar([catBarItem, dogBarItem])
        
        return cbBar
    }
}


class AppDelegate: NSObject, NSApplicationDelegate {
    private var bar: CBBar?
    
    func applicationDidFinishLaunching(_ notification: Notification) {
        print("Launched!")
        
        ConfManager().evaluate()
        
        bar = BarManager.getBar()
    }
    
    func applicationWillTerminate(_ notification: Notification) {
        print("Terminated!")
    }
}
