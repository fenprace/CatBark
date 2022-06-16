//
//  Conf.swift
//  CatBark
//
//  Created by Zhuo FENG on 2022/6/16.
//

import Foundation
import JavaScriptCore

let source = "window.t = 'Ni hao'"

class ConfManager {
    var jsContext = JSContext()
    
    func evaluate() {
        let result = self.jsContext?.evaluateScript("[1, 2, 3, {}]")
        print(result?.toString())
    }
}
