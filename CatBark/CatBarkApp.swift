//
//  CatBarkApp.swift
//  CatBark
//
//  Created by Zhuo FENG on 2022/6/16.
//

import SwiftUI
import AppKit

@main
struct CatBarkApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
//        WindowGroup {
//            ContentView()
//        }
        
        Settings {
            ContentView()
        }
    }
}
