//
//  MyScoreViewController.swift
//  TestModule
//
//  Created by Clay Keisel on 4/17/18.
//  Copyright © 2018 Patomalo Development. All rights reserved.
//

import UIKit

class MyScoreViewController: UIViewController {

    @IBOutlet weak var moduleName: UILabel!
    @IBOutlet weak var moduleDescription: UILabel!
    @IBOutlet weak var moduleIcon: UILabel!
    @IBOutlet weak var initialViewController: UILabel!
    
    var module: ModuleProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        moduleName.text = module.name
        moduleDescription.text = module.desc
        moduleIcon.text = module.icon
        initialViewController.text = module.initialViewController
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func swipeRightHandler(_ sender: UISwipeGestureRecognizer) {
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
