//
//  ModuleProtocol.swift
//  TestModule
//
//  Created by Clay Keisel on 4/17/18.
//  Copyright © 2018 Patomalo Development. All rights reserved.
//

//import Foundation

protocol ModuleProtocol {
    var name: String { get set }
    var desc: String { get set }
    var icon: String { get set }
    var initialViewController: String { get set }
}
