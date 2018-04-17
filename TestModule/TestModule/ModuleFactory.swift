//
//  ModuleFactory.swift
//  TestModule
//
//  Created by Clay Keisel on 4/17/18.
//  Copyright © 2018 Patomalo Development. All rights reserved.
//

import UIKit

class ModuleFactory: NSObject {
    
    class func createScanModules(_ market:String) -> Array<ModuleProtocol>? {
        switch market {
        case "America":
            return createAmericaScanModules()
        case "Greater China":
            return createChinaScanModules()
        case "EMEA":
            return createEMEAScanModules()
        default:
            print("Unrecognized market on createScanModules")
            return nil
        }
    }
    
    private class func createAmericaScanModules() -> Array<ModuleProtocol> {
        var modules = Array<ModuleProtocol>()
        modules.append(Module(withName: "My Score", description: "Track & share your progress", icon: "myScoreIcon", initialViewController: "myScoreViewController"))
        modules.append(ScanModule("Demo Scan", description: "Scan quickly without asking info from customer", icon: "demoScanIcon", initialViewController: "demoScanViewController"))
        modules.append(ScanModule("Scan", description: "Scan a new customer or rescan an existing one", icon: "scanIcon", initialViewController: "scanViewController"))
        return modules
    }
    
    private class func createChinaScanModules() -> Array<ModuleProtocol> {
        var modules = Array<ModuleProtocol>()
        modules.append(Module(withName: "My Score", description: "Track & share your progress", icon: "myScoreIcon", initialViewController: "myScoreViewController"))
        modules.append(ScanModule("THV Scan", description: "Get a more precise scan result", icon: "thvScanIcon", initialViewController: "thvScanViewController"))
        modules.append(ScanModule("Scan", description: "Scan a new customer or rescan an existing one", icon: "scanIcon", initialViewController: "scanViewController"))
        return modules
    }
    
    private class func createEMEAScanModules() -> Array<ModuleProtocol> {
        var modules = Array<ModuleProtocol>()
        modules.append(Module(withName: "My Score", description: "Track & share your progress", icon: "myScoreIcon", initialViewController: "myScoreViewController"))
        modules.append(ScanModule("Scan", description: "Scan a new customer or rescan an existing one", icon: "scanIcon", initialViewController: "scanViewController"))
        return modules
    }

}
