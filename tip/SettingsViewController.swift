//
//  SettingsViewController.swift
//  tip
//
//  Created by Zhijie (Jenny) Xu on 7/29/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onTap(_ sender: Any) {
    }
    
    let defaults = UserDefaults.standard
    @IBAction func setTipPercentage(_ sender: Any) {
        let tipPercentages = [0.15, 0.18, 0.2]
        let tip = tipPercentages[tipControl.selectedSegmentIndex]
        defaults.set(tip, forKey: "tipPercent")
        defaults.synchronize()
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
