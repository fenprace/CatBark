//
//  AppDelegate.swift
//  CatBark
//
//  Created by Zhuo FENG on 2022/6/16.
//

import Foundation
import AppKit

class AppDelegate: NSObject, NSApplicationDelegate {
    private var statusBar: StatusBar?
    
    func applicationDidFinishLaunching(_ notification: Notification) {
        print("Launched!")
        
        statusBar = StatusBar()
        statusBar?.start()
    }
    
    func applicationWillTerminate(_ notification: Notification) {
        print("Terminated!")
    }
}
