//
//  ScanTypeViewController.swift
//  TestModule
//
//  Created by Clay Keisel on 4/17/18.
//  Copyright © 2018 Patomalo Development. All rights reserved.
//

import UIKit

class ScanTypeViewController: UIViewController {
    
    @IBOutlet weak var moduleName: UILabel!
    @IBOutlet weak var moduleDescription: UILabel!
    @IBOutlet weak var viewIcon: UILabel!
    @IBOutlet weak var initialVC: UILabel!
    @IBOutlet weak var demoRequired: UILabel!
    @IBOutlet weak var demoFirst: UILabel!
    
    var scanModule: ScanModule!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        moduleName.text = scanModule.name
        moduleDescription.text = scanModule.desc
        viewIcon.text = scanModule.icon
        initialVC.text = scanModule.initialViewController
        demoRequired.text = scanModule.demographicsRequired.description
        demoFirst.text = scanModule.demographicsFirst.description
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func handleSwipeEvents(_ sender: UISwipeGestureRecognizer) {
        if sender.direction == .right {
            dismiss(animated: true, completion: nil)
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
