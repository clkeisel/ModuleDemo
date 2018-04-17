//
//  AppData.swift
//  TestModule
//
//  Created by Clay Keisel on 4/17/18.
//  Copyright © 2018 Patomalo Development. All rights reserved.
//

import UIKit

class AppData {
    var market: String
    var userType: String
    var scanModules: Array<ModuleProtocol>?
    
    private static var sharedInstance: AppData = {
        let appData = AppData()
        return appData
    }()
    
    private init() {
        // assign market and account type by login
        market = "America"
        userType = "Distributor"
    }
    
    class func instance() -> AppData {
        return sharedInstance
    }
}
