//
//  Module.swift
//  TestModule
//
//  Created by Clay Keisel on 4/17/18.
//  Copyright © 2018 Patomalo Development. All rights reserved.
//

import UIKit

class Module: ModuleProtocol {
    
    var name: String
    var desc: String
    var icon: String
    var initialViewController: String
    
    init(withName name: String, description:String, icon: String, initialViewController: String) {
        self.name = name
        self.desc = description
        self.icon = icon
        self.initialViewController = initialViewController
    }
}
