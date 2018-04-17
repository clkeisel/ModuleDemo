//
//  ScanModule.swift
//  TestModule
//
//  Created by Clay Keisel on 4/17/18.
//  Copyright © 2018 Patomalo Development. All rights reserved.
//

import UIKit

class ScanModule: ModuleProtocol {
    
    var name: String
    var desc: String
    var icon: String
    var initialViewController: String
    var demographicsFirst: Bool = false
    var demographicsRequired: Bool = false
    
    private let appData = AppData.instance()
    
    init(_ withName: String, description: String, icon:String, initialViewController:String) {
        self.name = withName
        self.desc = description
        self.icon = icon
        self.initialViewController = initialViewController
        configureScanModule()
    }
    
    fileprivate func configureScanModule() {
        switch appData.market {
        case "Greater China":
            demographicsRequired = true
            demographicsFirst = true
        case "America":
            demographicsRequired = true
            demographicsFirst = false
        case "EMEA":
            demographicsRequired = false
            demographicsFirst = true
        default:
            demographicsRequired = false
            demographicsFirst = false
        }
    }

}
